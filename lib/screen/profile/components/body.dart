import 'package:flutter/material.dart';
import '../../contact_us_page.dart';
import '../../notifications.dart';
import '../editProfile_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Edit Profile",
            icon: "assets/icon/Profile.svg",
            press: () => {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new EditeProfileScreen(),
                ),
              )

              /*Navigator.pushNamed(context, EditeProfileScreen.id)*/
            },
          ),
          ProfileMenu(
            text: "Address",
            icon: "assets/icon/Location.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Notification",
            icon: "assets/icon/Notification.svg",
            press: () => {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new NotificationsPage()))
            },
          ),
          ProfileMenu(
            text: "Payment",
            icon: "assets/icon/Wallet.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icon/Info Square.svg",
            press: () {
              //Navigator.pushNamed(context, ContactUsPage.id);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new ContactUsPage()));
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icon/Logout.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
