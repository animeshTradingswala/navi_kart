import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:navi_kart/const.dart';
import 'package:navi_kart/custom_loader.dart';

class CacheImageComponents extends StatelessWidget {
  final String imgUrl;
  final int? width, height;

  const CacheImageComponents({
    Key? key,
    required this.imgUrl,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      placeholder: (context, url) => const CustomLoader(
        loaderColor: white,
      ),
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.image_not_supported_sharp,
        color: Colors.red,
      ),
      memCacheHeight: height,
      memCacheWidth: width,
    );
  }
}
