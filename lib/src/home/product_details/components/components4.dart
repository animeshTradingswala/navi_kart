import 'package:flutter/material.dart';

class SellerDetails extends StatelessWidget {
  const SellerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      tilePadding: EdgeInsets.zero,
      initiallyExpanded: false,
      childrenPadding: EdgeInsets.fromLTRB(0, 0, 100, 0),
      title: Text(
        'Seller Details',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      // subtitle: Text('subtitle'),
      children: [
        Text(
          'Seller Details\n\n Seller Details \n\n Seller Details',
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
