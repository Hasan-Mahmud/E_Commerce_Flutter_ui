import 'package:e_commerce_flutter_ui/src/Screens/details/componants/body.dart';
import 'package:e_commerce_flutter_ui/src/models/product.dart';
import 'package:flutter/material.dart';

import 'componants/costom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductsDetailsArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      // By default our background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppbar(rating: arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}



// But we also need to pass our product to our details screen
//And we use name route so we need to create a arguments class

class ProductsDetailsArguments {
  final Product product;

  ProductsDetailsArguments({@required this.product});
}
