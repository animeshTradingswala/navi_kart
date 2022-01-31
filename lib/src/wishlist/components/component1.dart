import 'package:flutter/material.dart';

import '../../../const.dart';

Widget component1(context) {
  double w = MediaQuery.of(context).size.width;
  return Row(
    children: [
      const Text(
        'Product Name',
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      SizedBox(
        width: w * 0.39,
      ),
      IconButton(
        splashColor: black,
        splashRadius: 20,
        icon: const Icon(
          Icons.close,
          color: Colors.red,
        ),
        onPressed: () {},
      ),
    ],
  );
}
