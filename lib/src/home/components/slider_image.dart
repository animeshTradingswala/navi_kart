import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_indicators.dart';
import 'package:flutter_carousel_widget/flutter_carousel_options.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';

class ImageSliderComponent extends StatelessWidget {
  final List<String> imgList = [
    'https://source.unsplash.com/random/1080x1080/?abstracts',
    'https://source.unsplash.com/random/1080x720/?fruits,flowers',
    'https://source.unsplash.com/random/1920x1920/?sports',
    'https://source.unsplash.com/random/1080x1080/?nature',
    'https://source.unsplash.com/random/1080x360/?science',
    'https://source.unsplash.com/random/1080x600/?computer'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlutterCarousel.builder(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: false,
          viewportFraction: 1,
          showIndicator: true,
          autoPlay: true,
          slideIndicator: CircularStaticIndicator(),
        ),
        itemCount: (imgList.length / 2).round(),
        itemBuilder: (context, index, realIdx) {
          final int first = index * 2;
          final int second = first + 1;
          return Row(
            children: [first, second].map((idx) {
              return Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: catchImg(
                    imgUrl: imgList[idx],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
