import 'package:e_commerce_flutter_ui/src/Screens/forgot_password/componants/body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),   
      body: Body(),   
    );
  }
}