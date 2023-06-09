import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxi_app/cubit/maps/maps_cubit.dart';
import 'package:taxi_app/repository/maps_repo.dart';
import 'package:taxi_app/screen/intro_screen/splash_screen.dart';
import 'package:taxi_app/screen/main_app.dart';
import 'package:taxi_app/webServices/PlaceWebServices.dart';
import 'cubit/auth/auth_cubit.dart';
import 'routes.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

int? isViewed;
void main() async {
  /* SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();//
  isViewed = prefs.getInt('IntroPage'); */
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit(),
          ),
          BlocProvider(
            create: (context) => MapsCubit(MapsRepository(PlacesWebSevices())),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: isViewed != 0 ? OnBoard() : LetsIn(),
          home: SplashScreen(),
          routes: routes,
          initialRoute: SplashScreen.id,
          theme: ThemeData().copyWith(
            colorScheme: ThemeData()
                .colorScheme
                .copyWith(primary: Color.fromARGB(255, 11, 11, 11)),
          ),
        ));
  }
}
