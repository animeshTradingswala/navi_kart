import 'package:flutter/cupertino.dart';

Widget ourProduct() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
      right: 15,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            text: '" We ',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
            children: [
              TextSpan(
                text: 'think',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xfff4c2c2),
                ),
              ),
              TextSpan(
                text: ' about our ',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextSpan(
                text: 'customers. " , ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xfff4c2c2),
                ),
              ),
            ],
          ),
        ),

        // Text(
        //   '" We ',
        //   style: TextStyle(
        //     fontSize: 55,
        //     fontWeight: FontWeight.w100,
        //   ),
        // ),
        // Text(
        //   'of Products "',
        //   style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        Align(
          alignment: Alignment.topRight,
          child: const Text(
            '--- Mystery Trunk',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
