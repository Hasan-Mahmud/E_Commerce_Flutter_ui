import 'package:e_commerce_flutter_ui/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCart(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCart extends StatelessWidget {
  final String icon, text;
  final GestureTapCallback press;

  const CategoryCart({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenwidth(60),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  // color: Color(0xFFFFECDF),
                  color: Color(0xFFE0FAEA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon, color: kPrimaryColor,),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}