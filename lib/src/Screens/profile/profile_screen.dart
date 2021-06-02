import 'package:e_commerce_flutter_ui/src/Screens/profile/components/body.dart';
import 'package:e_commerce_flutter_ui/src/componants/custom_bottom_nav_bar.dart';
import 'package:e_commerce_flutter_ui/src/enums.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}


