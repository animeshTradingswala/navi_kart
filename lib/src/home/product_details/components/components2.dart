import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      tilePadding: EdgeInsets.zero,
      initiallyExpanded: true,
      childrenPadding: EdgeInsets.fromLTRB(0, 0, 100, 0),
      title: Text(
        'Product Details',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      // subtitle: Text('subtitle'),
      children: [
        Text(
          'Product Details\n\n Product Details \n\n Product Details',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
