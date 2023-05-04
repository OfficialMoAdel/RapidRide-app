import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../booking_page.dart';
import '../chat/inbox_Page.dart';
import '../profile/profile_screen.dart';
import '../wallet/wallet_page.dart';
import 'home_page_car.dart';

class MainPagecar extends StatefulWidget {
  const MainPagecar({super.key});
  static String id = 'MainPageCar';

  @override
  State<MainPagecar> createState() => _MainPagecarState();
}

class _MainPagecarState extends State<MainPagecar> {
  int _selactedIndex = 0;

  List<Widget> _WigetOptions = <Widget>[
    HomepageCar(),
    BookingPage(),
    InboxPage(),
    WalletScreen(),
    ProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selactedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _WigetOptions.elementAt(_selactedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        //unselectedItemColor: kScandryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Home.svg',
                color: _selactedIndex == 0 ? kPrimaryColor : kScandryColor),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Paper.svg',
                color: _selactedIndex == 1 ? kPrimaryColor : kScandryColor),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Message.svg',
                color: _selactedIndex == 2 ? kPrimaryColor : kScandryColor),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Wallet.svg',
                color: _selactedIndex == 3 ? kPrimaryColor : kScandryColor),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Profile.svg',
                color: _selactedIndex == 4 ? kPrimaryColor : kScandryColor),
            label: "Profile",
          )
        ],
        currentIndex: _selactedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
