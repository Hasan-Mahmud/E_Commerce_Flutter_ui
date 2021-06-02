import 'package:e_commerce_flutter_ui/src/componants/rounded_icon_btn.dart';
import 'package:e_commerce_flutter_ui/src/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // for demo we use fixed value
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenwidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            color: Colors.black,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenwidth(15),),
          RoundedIconBtn(
            iconData: Icons.add,
            color: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenwidth(40),
      width: getProportionateScreenwidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}