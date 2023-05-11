import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../widgets/coustom_button.dart';
import '../../widgets/halper_app.dart';
import '../../constants.dart';
import '../../widgets/custom-text_filed.dart';
import 'AddressDirectionPage.dart';

class HomepageCar extends StatefulWidget {
  const HomepageCar({super.key});
  static String id = 'HomepageCar';

  @override
  State<HomepageCar> createState() => _HomepageCarState();
}

class _HomepageCarState extends State<HomepageCar> {
  late GoogleMapController _controller;
  double _panelHeight = 0.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GestureDetector(
            child: SvgPicture.asset('assets/icon/Arrow - Left.svg'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: [
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundColor: YallowColor,
            child: SvgPicture.asset(
              'assets/icon/Search.svg',
            ),
          ),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundColor: YallowColor,
            child: SvgPicture.asset(
              'assets/icon/Notification.svg',
            ),
          ),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundColor: YallowColor,
            child: SvgPicture.asset(
              'assets/icon/Close Square.svg',
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target:
                  LatLng(37.4219999, -122.0840575), // Set your initial location
              zoom: 14,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                setState(() {
                  _panelHeight -=
                      details.delta.dy / MediaQuery.of(context).size.height;
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * _panelHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Text("Select Address",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    ListTile(
                        minLeadingWidth: 12,
                        leading: SvgPicture.asset(
                          "assets/icon/Group1.svg",
                          color: PrimaryColor,
                          height: 20,
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
                        title: CustomTextFiled(
                          hintText: 'Destination',
                        )),
                    /* SizedBox(
                      height: MediaQuery.of(context).size.height / 50, 
                    ),*/
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      child: CoustomButton(
                        text: 'Search',
                        onTap: () {
                          context.push(new AddressDirectionPage());
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
