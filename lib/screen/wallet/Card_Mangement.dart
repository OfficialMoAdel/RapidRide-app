import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_app/constants.dart';
import 'package:taxi_app/screen/wallet/NFC_Activation.dart';
import 'package:taxi_app/widgets/coustom_button.dart';
import 'package:taxi_app/widgets/halper_app.dart';
import 'package:provider/provider.dart';
import 'Charge_NFC_Card.dart';
import 'package:nfc_manager/nfc_manager.dart';

class CardMangement extends StatefulWidget {
  const CardMangement({Key? key}) : super(key: key);

  @override
  State<CardMangement> createState() => _CardMangementState();
}

class _CardMangementState extends State<CardMangement> {
  final databaseReference = FirebaseDatabase.instance.reference();
  List<int> identifier = [];
  List<String> hexList = [];
  late String hexID = '';
  ValueNotifier<dynamic> result = ValueNotifier(null);

  void getbalance() {
    final balanceRef = databaseReference.child('AE:9B:73:70/balance');
    balanceRef.once().then((DatabaseEvent event) {
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        setState(() {
          AppConstants.fireBaseBalance = snapshot.value as int;
        });
        print(AppConstants.fireBaseBalance);
      } else {
        print(AppConstants.fireBaseBalance);
      }
    }).catchError((error) => print('Error: $error'));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getbalance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Card Management", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/image/Wallet.png',
                    width: double.infinity,
                    height: 250,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 60, left: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Abd Al Azeez Hosam',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 120, left: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Your Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 150, left: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${AppConstants.fireBaseBalance} Points',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getbalance();
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 200, left: 30),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            width: 90,
                            height: 35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.refresh),
                                Text('Reload'),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CoustomButton(
                  text: 'Charge NFC Card',
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 450,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Scan The Card To Complete',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Charging',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/image/icon nfc 2.png',
                                // Replace with your image file path
                                width: 170,
                                height: 170,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: CoustomButton(
                                  text: 'Stop Scanning',
                                  onTap: () => {
                                    Navigator.pop(context),
                                    NfcManager.instance.stopSession()
                                  },
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ).then(
                      (value) {
                        Future.delayed(Duration(seconds: 2), () {
                          NfcManager.instance.stopSession();
                        });
                      },
                    );
                    _tagRead();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CoustomButton(
                  text: 'Card Activation',
                  onTap: () => {
                    {context.push(new NFCValidation())}
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void _tagRead() {
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      result.value = tag.data;
      identifier = result.value['nfca']['identifier'].cast<int>();
      hexList = identifier.map((i) => i.toRadixString(16)).toList();
      hexID = hexList.join(':').toUpperCase();
      if (hexID != '') {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChargeNFC(
              HexId: hexID,
            ),
          ),
        );
        debugPrint(hexID);
      }
    });
  }
}
