import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;
  const SectionTitle({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenwidth(25),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text("See More"),
          ),
        ],
      ),
    );
  }
}