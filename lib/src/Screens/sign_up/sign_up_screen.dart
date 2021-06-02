import 'package:e_commerce_flutter_ui/src/Screens/sign_up/componants/body.dart';
import 'package:flutter/material.dart';

class SignUpscreen extends StatelessWidget {
  static String routeName ="/sing_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}