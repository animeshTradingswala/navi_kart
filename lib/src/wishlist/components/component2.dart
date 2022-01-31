import 'package:flutter/material.dart';

import '../../../const.dart';

Widget component2(context) {
  double w = MediaQuery.of(context).size.width;
  return Row(
    children: [
      const Text(
        '\$ 100',
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      SizedBox(
        width: w * 0.52,
      ),
      IconButton(
        splashColor: black,
        splashRadius: 20,
        icon: const Icon(
          Icons.add_shopping_cart,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
    ],
  );
}
