import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:taxi_app/screen/wallet/Card_Activated_ui.dart';

class CardInformationPage extends StatefulWidget {
  final String HexId;

  const CardInformationPage({Key? key, required this.HexId}) : super(key: key);

  @override
  State<CardInformationPage> createState() => _CardInformationPageState();
}

class _CardInformationPageState extends State<CardInformationPage> {
  TextEditingController name_controler = TextEditingController();
  TextEditingController phone_controler = TextEditingController();
  TextEditingController Id_controler = TextEditingController();
  final databaseReference = FirebaseDatabase.instance.reference();

  late String? name;
  late String? phone;
  late String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Card Detected',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 60),
            Text(
              'Add Card Information',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  onChanged: (value) {
                    name = name_controler.text;
                  },
                  controller: name_controler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter The Card Holder Name',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Phone Number',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    phone = phone_controler.text;
                  },
                  controller: phone_controler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter The Phone Number',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('National ID',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    id = Id_controler.text;
                  },
                  controller: Id_controler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter The National ID',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                setCardInfo(
                    Name: name.toString(),
                    Id: id.toString(),
                    HexId: widget.HexId,
                    Phone: phone.toString());
                debugPrint(phone);
                debugPrint(name);
                debugPrint(widget.HexId);
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(
                      30), // adjust the radius to make the border more or less circular
                ),
                child: const Center(
                  child: Text(
                    'Active Now',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> setCardInfo({
  //   required String Name,
  //   required String Phone,
  //   required String Id,
  //   required String HexId,
  // }) async {
  //   final snapshot = await databaseReference.child(HexId).once();
  //   if (snapshot.snapshot == null) {
  //     await databaseReference.child(HexId).set({
  //       'balance': '0',
  //       'Phone Number': Phone,
  //       'Card Holder Name': Name,
  //       'National ID': Id,
  //     });
  //   }
  // }

  Future<void> setCardInfo({
    required String Name,
    required String Phone,
    required String Id,
    required String HexId,
  }) async {
    final balanceRef = databaseReference.child(HexId);
    balanceRef.once().then((DatabaseEvent event) async {
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value == null) {
        await databaseReference.child(HexId).set({
          'balance': 0,
          'Phone Number': Phone,
          'Card Holder Name': Name,
          'National ID': Id,
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardActivated()),
        );
      } else {
        showToast('هذا الكارد تم تفعيله مسبقا');
      }
    }).catchError((error) => print('Error: $error'));
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
