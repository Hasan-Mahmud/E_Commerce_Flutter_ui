import 'package:e_commerce_flutter_ui/src/Screens/profile/profile_screen.dart';
import 'package:e_commerce_flutter_ui/src/routs.dart';
import 'package:e_commerce_flutter_ui/src/theme.dart';
import 'package:flutter/material.dart';

import 'Screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      // initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}

