import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final GestureTapCallback press;
  const RoundedIconBtn({
    Key key,
    @required this.iconData,
    @required this.color,
    @required this.press,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenwidth(40),
      width: getProportionateScreenwidth(40),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Icon(iconData, color: color,),
      ),
    );
  }
}