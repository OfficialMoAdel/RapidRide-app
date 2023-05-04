import 'package:flutter/material.dart';
import 'screen/contact_us_page.dart';
import 'screen/main_app.dart';
import 'screen/profile/editProfile_screen.dart';
import 'screen/auth/lets_in.dart';
import 'screen/auth/login_page.dart';
import 'screen/auth/register_page.dart';
import 'screen/chat/inbox_Page.dart';
import 'screen/car/home_page_car.dart';
import 'screen/intro_screen/onebordding_sceen.dart';
import 'screen/car/main_page_car.dart';
import 'screen/profile/profile_screen.dart';
import 'screen/wallet/wallet_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.id: (context) => LoginPage(),
  RegisterPage.id: (context) => RegisterPage(),
  ProfileScreen.id: (context) => ProfileScreen(),
  HomepageCar.id: (context) => HomepageCar(),
  LetsIn.id: (context) => LetsIn(),
  onBordingScreen.id: (context) => onBordingScreen(),
  WalletScreen.id: (context) => WalletScreen(),
  InboxPage.id: (context) => InboxPage(),
  MainPagecar.id: (context) => MainPagecar(),
  EditeProfileScreen.id: (context) => EditeProfileScreen(),
  ContactUsPage.id: (context) => ContactUsPage(),
  MianApp.id: (context) => MianApp()
};
