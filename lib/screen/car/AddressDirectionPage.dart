import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app/screen/car/selectcar.dart';
import 'package:taxi_app/widgets/coustom_button.dart';

import '../../constants.dart';

// ignore_for_file: prefer_const_constructors
//google_maps_flutter: ^2.2.5
class AddressDirectionPage extends StatefulWidget {
  const AddressDirectionPage({super.key});

  @override
  State<AddressDirectionPage> createState() => _AddressDirectionPageState();
}

class _AddressDirectionPageState extends State<AddressDirectionPage> {
  final LatLng _initialPosition = LatLng(37.422, -122.084);
  late GoogleMapController _mapController;
  final List<String> _locations = [
    'My Current Location',
    'Soft Bank Buildings'
  ];
  final List<String> _titles = ['Title 1', 'Title 2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          title: Text('Address Direction'),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: ThirdColor),
          backgroundColor: PrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GoogleMap(
              onMapCreated: (controller) => _mapController = controller,
              initialCameraPosition: CameraPosition(
                target: _initialPosition,
                zoom: 14.0,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          ..._buildLocationList(),
          CoustomButton(
              text: "Continue To Order",
              onTap: () => Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new carselectscreen(),
                    ),
                  )),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  List<Widget> _buildLocationList() {
    List<Widget> locationWidgets = [];

    for (int i = 0; i < _locations.length; i++) {
      locationWidgets.add(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 8.0),
                  Text(_locations[i], style: TextStyle(fontSize: 16.0)),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () => _editTitle(i),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(
                _titles[i],
                style: TextStyle(fontSize: 14.0, color: ScandryColor),
              ),
              SizedBox(height: 8.0),
              Divider(),
            ],
          ),
        ),
      );
    }

    return locationWidgets;
  }

  void _editTitle(int index) {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController controller =
            TextEditingController(text: _titles[index]);

        return AlertDialog(
          title: Text('Edit Title'),
          content: TextField(controller: controller),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _titles[index] = controller.text;
                });
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
