import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app/model/PlaceSuggestion.dart';
import 'package:taxi_app/widgets/distance_and_time.dart';
import 'package:taxi_app/widgets/halper_app.dart';
import 'package:uuid/uuid.dart';
import '../../cubit/maps/maps_cubit.dart';
import '../../location_helper.dart';
import '../../model/place.dart';
import '../../model/place_diraction.dart';
import '../../widgets/coustom_button.dart';
import '../../constants.dart';
import '../../widgets/custom-text_filed.dart';
import '../../widgets/place_item.dart';
import 'AddressDirectionPage.dart';

class HomepageCar extends StatefulWidget {
  const HomepageCar({super.key});
  static String id = 'HomepageCar';

  @override
  State<HomepageCar> createState() => _HomepageCarState();
}

class _HomepageCarState extends State<HomepageCar> {
  double _panelHeight = 0.4;
  List<dynamic> places = [];
  TextEditingController searchController = TextEditingController();

  static Position? position;
  Completer<GoogleMapController> _mapController = Completer();

  static final CameraPosition _myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(position!.latitude, position!.longitude),
    tilt: 0.0,
    zoom: 17,
  );

//these variables for getplaceLocation
  Set<Marker> markers = Set();

  late PlaceSuggestion placeSuggestion;
  late Place selactedPlace;
  late Marker searchedPlaceMarker;
  late Marker currentLocationMarker;
  late CameraPosition goToSearchedForPlace;

  void buildCameraNewPosition() {
    goToSearchedForPlace = CameraPosition(
      bearing: 0.0,
      tilt: 0.0,
      target: LatLng(
        selactedPlace.result.geometry.location.lat,
        selactedPlace.result.geometry.location.lng,
      ),
      zoom: 13,
    );
  }

// these variables for getDirection
  PlaceDirecitons? placeDirecitons;
  var progressIndicator = false;
  late List<LatLng> polylinePoints;
  var isSearchPlaceMarkerClicked = false;
  var isTimeAndDistanceVisible = false;
  late String time;
  late String distance;

  @override
  initState() {
    super.initState();
    getMyCurrentLocation();
  }

  /*  Future<void> getMyCurrentLocation() async {
    position = await LocationHelper.getCurrentLocation().whenComplete(() {
      setState(() {});
    });
  } */

  Future<void> getMyCurrentLocation() async {
    try {
      position = await LocationHelper.getCurrentLocation().whenComplete(() {
        setState(() {});
      });
    } catch (e) {
      // Handle the exception
      if (e is PermissionDeniedException) {
        // Show a dialog or prompt to the user asking for permission again
        // You can provide a button to open the app settings for the user to manually enable location permission
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Location Permission Required'),
            content:
                const Text('Please grant permission to access your location.'),
            actions: [
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  // Handle cancel action
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Open Settings'),
                onPressed: () {
                  // Open the app settings to let the user manually enable location permission
                  Geolocator.openAppSettings();
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      } else {
        // Handle other exceptions
        print('Error obtaining current location: $e');
      }
    }
  }

  Widget buildMap() {
    return GoogleMap(
      markers: markers,
      mapType: MapType.normal,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      initialCameraPosition: _myCurrentLocationCameraPosition,
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
      polylines: placeDirecitons != null
          ? {
              Polyline(
                polylineId: const PolylineId('my_polyline'),
                color: Colors.black,
                points: polylinePoints,
                width: 5,
              )
            }
          : {},
    );
  }

  Future<void> _goToMyCurrentLocation() async {
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(
        CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition));
  }

  void getPlacesSuggestions(String Qury) {
    final sessionToken = Uuid().v4();
    BlocProvider.of<MapsCubit>(context)
        .emitplacesSuggestions(Qury, sessionToken);
  }

  Widget buildSuggestionsBloc() {
    return BlocBuilder<MapsCubit, MapsState>(
      builder: (context, state) {
        if (state is PlacesLoaded) {
          places = (state).places;
          if (places.length != 0) {
            return buildPlacesList();
          } else {
            return Container();
          }
        } else {
          return Container();
        }
      },
    );
  }

  Widget buildSelectedPlaceLocationBloc() {
    return BlocListener<MapsCubit, MapsState>(
      listener: (context, state) {
        if (state is PlaceLocationLoaded) {
          selactedPlace = (state).place;
          goToMySearchedLocation();
          getDiractions();
        }
      },
      child: Container(),
    );
  }

  void getDiractions() {
    BlocProvider.of<MapsCubit>(context).emitPlaceDirections(
        LatLng(position!.latitude, position!.longitude),
        LatLng(selactedPlace.result.geometry.location.lat,
            selactedPlace.result.geometry.location.lng));
  }

  Widget buildDiractionsBloc() {
    return BlocListener<MapsCubit, MapsState>(
      listener: (context, state) {
        if (state is DirectionsLoaded) {
          placeDirecitons = (state).placeDirecitons;
          getPolylinePoints();
        }
      },
      child: Container(),
    );
  }

  void getPolylinePoints() {
    polylinePoints = placeDirecitons!.polylinePoints
        .map((e) => LatLng(e.latitude, e.longitude))
        .toList();
  }

  Future<void> goToMySearchedLocation() async {
    buildCameraNewPosition();
    final GoogleMapController controller = await _mapController.future;
    controller
        .animateCamera(CameraUpdate.newCameraPosition(goToSearchedForPlace));

    buildSearchPlaceMarker();
  }

  void buildSearchPlaceMarker() {
    searchedPlaceMarker = Marker(
      markerId: MarkerId('1'),
      position: goToSearchedForPlace.target,
      onTap: () {
        buildCurrentLocationMarker();
        setState(() {
          isSearchPlaceMarkerClicked = true;
          isTimeAndDistanceVisible = true;
        });
      },
      infoWindow: InfoWindow(
        title: "${placeSuggestion.description}",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    addMarkerToMarkersAndUpdateUI(searchedPlaceMarker);
  }

  void addMarkerToMarkersAndUpdateUI(Marker marker) {
    setState(() {
      markers.add(marker);
    });
  }

  void buildCurrentLocationMarker() {
    currentLocationMarker = Marker(
      markerId: MarkerId('2'),
      position: LatLng(position!.latitude, position!.longitude),
      onTap: () {},
      infoWindow: InfoWindow(
        title: "Your Current Location",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
  }

  Widget buildPlacesList() {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return InkWell(
          onTap: () async {
            placeSuggestion = places[index];

            // controller.Close;

            getSelactedPlaceLocation();
            polylinePoints.clear();
            //remove All markers and updata UI
            removeAllMarkersAndUpdataui();
          },
          child: PlaceItem(
            suggestion: places[index],
          ),
        );
      },
      itemCount: places.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
    );
  }

  void removeAllMarkersAndUpdataui() {
    markers.clear();
    setState(() {});
  }

  void getSelactedPlaceLocation() {
    final sessionToken = Uuid().v4();
    BlocProvider.of<MapsCubit>(context)
        .emitPlaceLocation(placeSuggestion.placeId, sessionToken);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: CircleAvatar(
              backgroundColor: YallowColor,
              child: SvgPicture.asset(
                'assets/icon/Arrow - Left.svg',
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: YallowColor,
            child: SvgPicture.asset(
              'assets/icon/Search.svg',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 60,
          ),
          CircleAvatar(
            backgroundColor: YallowColor,
            child: SvgPicture.asset(
              'assets/icon/Notification.svg',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 60,
          ),
          CircleAvatar(
            backgroundColor: YallowColor,
            child: SvgPicture.asset(
              'assets/icon/Close Square.svg',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 40,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          position != null
              ? buildMap()
              : Center(
                  child: Container(
                    child: CircularProgressIndicator(
                      color: PrimaryColor,
                    ),
                  ),
                ),
          DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.6,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        isSearchPlaceMarkerClicked
                            ? DistanceAndTime(
                                isTimeAndDistanceVisible:
                                    isTimeAndDistanceVisible,
                                placeDirecitons: placeDirecitons,
                              )
                            : Container(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        SvgPicture.asset('assets/icon/Frame.svg'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        const Text("Select Address",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        ListTile(
                            minLeadingWidth: 12,
                            leading: InkWell(
                              onTap: _goToMyCurrentLocation,
                              child: SvgPicture.asset(
                                "assets/icon/Group1.svg",
                                color: PrimaryColor,
                                height: 20,
                              ),
                            ),
                            title: CustomTextFiled(
                              hintText: 'From',
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        ListTile(
                          minLeadingWidth: 12,
                          leading: SvgPicture.asset(
                            "assets/icon/Location.svg",
                            color: PrimaryColor,
                          ),
                          title: TextFormField(
                            validator: (data) {
                              if (data!.isEmpty) {
                                return 'Filed is required';
                              }
                            },
                            onChanged: (query) {
                              getPlacesSuggestions(query);
                            },
                            controller: searchController,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: ScandryColor.withOpacity(.05),
                              hintText: 'Destination',
                              hintStyle: const TextStyle(color: ScandryColor),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                    color: ScandryColor.withOpacity(0.05)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: PrimaryColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          child: CoustomButton(
                            text: 'Search',
                            onTap: () {
                              context.push(new AddressDirectionPage());
                            },
                          ),
                        ),
                        Column(
                          children: [
                            buildSuggestionsBloc(),
                            buildSelectedPlaceLocationBloc(),
                            buildDiractionsBloc(),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
