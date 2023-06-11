import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/widgets/digle.dart';
import '../../constants.dart';

class ChargeNFC extends StatefulWidget {
  final String HexId;

  const ChargeNFC({
    super.key,
    required this.HexId,
  });

  @override
  State<ChargeNFC> createState() => _ChargeNFCState();
}

class _ChargeNFCState extends State<ChargeNFC> {
  final databaseReference = FirebaseDatabase.instance.reference();
  String CardchargeNum = '';

  void checkCardExists(String CardNum) {
    final ref = FirebaseDatabase.instance.reference().child('Cards/$CardNum');
    ref.once().then(
      (DatabaseEvent event) {
        DataSnapshot snapshot = event.snapshot;
        if (snapshot.value == true) {
          if (CardNum.startsWith('30')) {
            updateBalance(CardId: widget.HexId, ChargeAmount: 30);
            ref.remove();
          } else if (CardNum.startsWith('50')) {
            updateBalance(CardId: widget.HexId, ChargeAmount: 50);
            ref.remove();
          } else if (CardNum.startsWith('100')) {
            updateBalance(CardId: widget.HexId, ChargeAmount: 100);
            ref.remove();
          } else if (CardNum.startsWith('200')) {
            updateBalance(CardId: widget.HexId, ChargeAmount: 200);
            ref.remove();
          }
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomDialog(
                  header: 'Card Charged Successfully !',
                  massage: 'You have successfully top up yor wallet',
                  imagePath: 'assets/image/Group.svg',
                  buttonText: "OK",
                  onButtonPressed: () {
                    Navigator.pop(context);
                  },
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomDialog(
                  header: 'Wrong Secret Code !',
                  massage: 'Please Check The Secret Number',
                  buttonText: "OK",
                  onButtonPressed: () {
                    Navigator.pop(context);
                  },
                );
              });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: ThirdColor,
        ),
        title: Text(
          'Charge NFC Card',
          style: TextStyle(
            color: ThirdColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Enter The Secret Code',
              style: TextStyle(
                  fontSize: 20,
                  color: ScandryColor,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 60,
                child: TextField(
                  onChanged: (value) {
                    CardchargeNum = value;
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: PrimaryColor)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                onPressed: () {
                  checkCardExists(CardchargeNum);
                },
                child: Text(
                  'Charge',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: PrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateBalance({required String CardId, required int ChargeAmount}) {
    final balanceRef = databaseReference.child('$CardId/balance');
    balanceRef.once().then((DatabaseEvent event) {
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value is int) {
        int? currentBalance = snapshot.value as int?;
        balanceRef.set(currentBalance! + ChargeAmount);
      } else {
        print('Error: balance value is not an integer');
      }
    }).catchError((error) => print('Error: $error'));
  }
}
