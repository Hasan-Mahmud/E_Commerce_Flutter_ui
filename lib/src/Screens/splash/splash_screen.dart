import 'package:e_commerce_flutter_ui/src/Screens/splash/componants/body.dart';
import 'package:e_commerce_flutter_ui/src/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    // you have to it your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}