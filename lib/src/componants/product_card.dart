import 'package:e_commerce_flutter_ui/src/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRatio = 1.02,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenwidth(20)),
      // padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenwidth(width),
          // width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenwidth(20)),
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(height: 5),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      // fontSize: getProportionateScreenwidth(18),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenwidth(8)),
                      // padding: EdgeInsets.all(8),
                      width: getProportionateScreenwidth(28),
                      // width: 28,
                      height: getProportionateScreenwidth(28),
                      // height: 28,
                      decoration: BoxDecoration(
                        color: product.isFabourite
                            ? kSpColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/heart.svg",
                        color: product.isFabourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
