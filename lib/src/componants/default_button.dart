import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const DefaultButton({    
  @required this.text, 
  @required this.press});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(40),
      child: ElevatedButton(                        
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        //   shape: MaterialStateProperty.all<OutlinedBorder>(20),
        // ),
        style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenwidth(25),
            // fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}