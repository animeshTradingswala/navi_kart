import 'package:flutter/material.dart';

Widget productHeading(
  String t1,
  String t2,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          t1,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            t2,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}
