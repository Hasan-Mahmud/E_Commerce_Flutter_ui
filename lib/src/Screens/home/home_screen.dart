import 'package:e_commerce_flutter_ui/src/Screens/home/componants/body.dart';
import 'package:e_commerce_flutter_ui/src/componants/custom_bottom_nav_bar.dart';
import 'package:e_commerce_flutter_ui/src/enums.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName ="/homeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Screen"),
      // ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home,),
    );
  }
}