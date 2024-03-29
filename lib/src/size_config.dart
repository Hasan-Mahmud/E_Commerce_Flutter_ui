import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData _mediaQueryData ;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  // @override
  // SizeConfig (BuildContext context){
  //   _mediaQueryData = MediaQuery.of(context);
  //   screenWidth = _mediaQueryData.size.width;
  //   screenHeight = _mediaQueryData.size.height;
  //   orientation = _mediaQueryData.orientation;
  // }  
  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double imputHeight){
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  
  return (imputHeight / 412.0) * screenHeight;
}

// Get the proportionate Width as per screen size
double getProportionateScreenwidth(double inputWidth){
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout height that designer use
  return (inputWidth / 412.0) * screenWidth;
}