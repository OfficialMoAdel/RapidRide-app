import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screen/main_app.dart';
import 'cubit/auth/auth_cubit.dart';
import 'routes.dart';

int? isViewed;
void main() async {
  /* SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onBoard'); */
  //////////////////////
  /* SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('IntroPage'); */
  runApp(MyApp());
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
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: isViewed != 0 ? OnBoard() : LetsIn(),
          home: MianApp(), //onBordingScreen(),
          routes: routes,
          initialRoute: MianApp.id, //onBordingScreen.id,
          theme: ThemeData().copyWith(
            colorScheme: ThemeData()
                .colorScheme
                .copyWith(primary: Color.fromARGB(255, 11, 11, 11)),
          ),
        ));
  }
}
