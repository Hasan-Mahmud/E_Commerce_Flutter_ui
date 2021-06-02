import 'package:e_commerce_flutter_ui/src/Screens/details/details_screen.dart';
import 'package:e_commerce_flutter_ui/src/Screens/home/componants/section_title.dart';
import 'package:e_commerce_flutter_ui/src/componants/product_card.dart';
import 'package:e_commerce_flutter_ui/src/models/product.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenwidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments:
                        ProductsDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenwidth(20))
            ],
          ),
        ),
      ],
    );
  }
}
