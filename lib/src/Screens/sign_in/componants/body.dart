import 'package:e_commerce_flutter_ui/src/Screens/sign_in/componants/sign_form.dart';
import 'package:e_commerce_flutter_ui/src/componants/no_account_text.dart';
import 'package:e_commerce_flutter_ui/src/componants/social_card.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    print('Width of the screen: ${SizeConfig.screenHeight}');
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),   
                // SizedBox(height: 30,),           
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                // SizedBox(height: 30,), 
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                // SizedBox(height: 30,), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                // SizedBox(height: 20),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




