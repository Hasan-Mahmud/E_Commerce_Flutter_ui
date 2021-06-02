import 'dart:ui';

import 'package:e_commerce_flutter_ui/src/Screens/details/componants/product_description.dart';
import 'package:e_commerce_flutter_ui/src/Screens/details/componants/products_images.dart';
import 'package:e_commerce_flutter_ui/src/Screens/details/componants/top_rounded_container.dart';
import 'package:e_commerce_flutter_ui/src/componants/default_button.dart';
import 'package:e_commerce_flutter_ui/src/models/product.dart';
import 'package:e_commerce_flutter_ui/src/size_config.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            bottom: getProportionateScreenwidth(40),
                            top: getProportionateScreenwidth(15),                          
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
