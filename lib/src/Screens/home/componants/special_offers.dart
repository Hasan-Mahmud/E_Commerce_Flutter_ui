import 'package:e_commerce_flutter_ui/src/Screens/home/componants/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Secial for you", press: () {}),
        SizedBox(height: getProportionateScreenwidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image_banner_2.png",
                category: "Smartphones",
                numberOfItems: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Image_banner_3.png",
                category: "Fashion",
                numberOfItems: 24,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenwidth(20))
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String category, image;
  final int numberOfItems;
  final GestureTapCallback press;
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numberOfItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenwidth(20)),
      child: SizedBox(
        width: getProportionateScreenwidth(242),
        // width: 242,
        height: getProportionateScreenwidth(100),
        // height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenwidth(15),
                  vertical: getProportionateScreenwidth(10),
                ),
                child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                    TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenwidth(20),
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(text: "$numberOfItems Brands"),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}