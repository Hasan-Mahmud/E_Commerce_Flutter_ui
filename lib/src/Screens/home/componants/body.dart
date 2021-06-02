import 'package:e_commerce_flutter_ui/src/Screens/home/componants/popular_products.dart';
import 'package:e_commerce_flutter_ui/src/Screens/home/componants/special_offers.dart';
import 'package:e_commerce_flutter_ui/src/size_config.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'dicount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenwidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenwidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenwidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenwidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenwidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenwidth(30)),
          ],
        ),
      ),
    );
  }
}


