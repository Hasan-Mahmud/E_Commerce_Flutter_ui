import 'package:e_commerce_flutter_ui/src/componants/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class CustomAppbar extends PreferredSize {
  final double rating;

  CustomAppbar({@required this.rating});

  @override
  // AppBar().preferredSize.height provide us the height that apply on our app bar 
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              color: Colors.black,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/star.svg"),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}