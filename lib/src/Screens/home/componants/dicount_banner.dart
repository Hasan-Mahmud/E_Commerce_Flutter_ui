import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenwidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenwidth(20),
        vertical: getProportionateScreenwidth(15),
      ),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF4a3290),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "CashBack 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}