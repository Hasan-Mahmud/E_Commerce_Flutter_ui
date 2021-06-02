import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svgScr;
  final int numOfItems;
  final GestureTapCallback press;
  const IconBtnWithCounter({
    Key key, 
    @required this.svgScr, 
    this.numOfItems = 0, 
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding:
                EdgeInsets.all(getProportionateScreenwidth(12)),
            height: getProportionateScreenwidth(50),
            width: getProportionateScreenwidth(50),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgScr),
          ),
          if(numOfItems !=0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenwidth(25),
              width: getProportionateScreenwidth(25),
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border:
                    Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$numOfItems",
                  style: TextStyle(
                    fontSize: getProportionateScreenwidth(10),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}