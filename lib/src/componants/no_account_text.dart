import 'package:e_commerce_flutter_ui/src/Screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpscreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 16,
              color: kSpColor,
            ),
          ),
        ),
      ],
    );
  }
}