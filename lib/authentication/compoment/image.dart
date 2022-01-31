import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  final String img;

  const ImageComponent({Key? key, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Image.asset(
      img,
      height: 300,
      width: w,
    );
  }
}
