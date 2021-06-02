import 'package:e_commerce_flutter_ui/src/Screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/details/details_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/home/home_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/login_success/login_success_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/otp/otp_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/profile/profile_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import 'Screens/cart/cart_screen.dart';
import 'Screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be availble here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
