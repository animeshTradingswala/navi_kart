import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:navi_kart/custom_loader.dart';

import '../../../const.dart';

const String demoImg =
    'http://smukwear.com/smukwear/products_photo/product-15.jpg';

Widget catchImg({
  required String imgUrl,
  double? width,
  double? height,
  BoxFit? fit,
}) {
  return CachedNetworkImage(
    imageUrl: imgUrl,
    placeholder: (context, url) => const CustomLoader(loaderColor: white),
    errorWidget: (context, url, error) => const Icon(
      Icons.image_not_supported_outlined,
      color: Colors.red,
    ),
    width: width,
    height: height,
    fit: fit,
  );
}
