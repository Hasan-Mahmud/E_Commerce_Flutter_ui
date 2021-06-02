import 'package:e_commerce_flutter_ui/src/Screens/profile/components/profile_menu.dart';
import 'package:e_commerce_flutter_ui/src/Screens/profile/components/profile_pic.dart';
import 'package:e_commerce_flutter_ui/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            icon: "assets/icons/User.svg",
            text: "My Account",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",
            text: "Notifications",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/settings.svg",
            text: "Settings",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/question_mark.svg",
            text: "Help Center",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/log_out.svg",
            text: "Log Out",
            press: () {},
          ),
        ],
      ),
    );
  }
}
