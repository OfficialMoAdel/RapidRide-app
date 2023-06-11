import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app/constants.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({super.key});

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  final LatLng _initialPosition = const LatLng(37.422, -122.084);
  late GoogleMapController _mapController;
  final List<String> _locations = [
    'My Current Location',
    'Soft Bank Buildings'
  ];
  final List<String> _titles = ['Title 1', 'Title 2'];
  final String _driverName = 'John Doe';
  final String _carType = 'Toyota Prius';
  final AssetImage _driverImageAsset =
      const AssetImage('assets/image/Ellipse.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset('assets/icon/Arrow - Left 2.svg'),
            ),
            decoration: BoxDecoration(
              color: YallowColor,
              borderRadius: BorderRadius.circular(50),
            ),
            width: 12,
            height: 12,
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) => _mapController = controller,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 14.0,
            ),
          ),
          const Center(
            child: Icon(
              Icons.location_on,
              color: PrimaryColor,
              size: 36,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.23,
            minChildSize: 0.23,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SvgPicture.asset('assets/icon/Frame.svg'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Trip to Destination',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text('4.5 km')
                            ],
                          ),
                        ),
                        const Divider(
                          endIndent: 8,
                          indent: 8,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: _driverImageAsset,
                                radius: 30.0,
                              ),
                              const SizedBox(width: 12.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 8.0),
                                  Text(
                                    ' $_driverName',
                                    style: const TextStyle(fontSize: 18.0),
                                  ),
                                  const SizedBox(height: 4.0),
                                  Text(
                                    ' $_carType',
                                    style: const TextStyle(
                                        fontSize: 14.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.height / 6,
                              ),
                              Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        WidgetSpan(
                                            child: SvgPicture.asset(
                                          'assets/icon/stare.svg',
                                          color: PrimaryColor,
                                        )),
                                        const TextSpan(text: ' 4.5'),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text('HSW 4736')
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          endIndent: 8,
                          indent: 8,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      child: Image.asset(
                                    'assets/image/Location.png',
                                    height: 42,
                                  )),
                                  const VerticalDivider(
                                    endIndent: 8,
                                    indent: 8,
                                    thickness: 2,
                                  ),
                                  Container(
                                      child: Image.asset(
                                    'assets/image/map.png',
                                    height: 42,
                                  ))
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.height / 30,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'National Grand Park',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '6 Glendale St. Worcester, MA 01604',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ScandryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 40,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Fitness Center',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '83 Cypress Street Longwood, FL 32779',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ScandryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.height / 20,
                              ),
                              Column(
                                children: [
                                  const Text('0 KM'),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                  ),
                                  const Text('20 KM')
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          endIndent: 8,
                          indent: 8,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: PrimaryColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 64,
                                  width: 64,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: SvgPicture.asset(
                                      'assets/icon/Chat.svg',
                                    ),
                                  )),
                              const SizedBox(
                                width: 24,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: PrimaryColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 64,
                                  width: 64,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: SvgPicture.asset(
                                      'assets/icon/Call.svg',
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
