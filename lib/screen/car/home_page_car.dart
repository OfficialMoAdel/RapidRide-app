import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app/widgets/coustom_button.dart';
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
      appBar: AppBar(
          title: Text('Home App'), backgroundColor: PrimaryColor, elevation: 0),
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Where do you want to go?",
                          hintStyle: TextStyle(color: ThirdColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Text("Select Address",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
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
                    ListTile(
                        minLeadingWidth: 12,
                        leading: SvgPicture.asset(
                          "assets/icon/Location.svg",
                          color: PrimaryColor,
                        ),
                        title: CustomTextFiled(
                          hintText: 'Destination',
                        )),
                    CoustomButton(
                      text: 'Search',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    new AddressDirectionPage()));
                      },
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
