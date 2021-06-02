import 'package:e_commerce_flutter_ui/src/Screens/sign_in/componants/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName= "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text("Sign In"),        
      ),
      body: Body(),
    );
  }
}