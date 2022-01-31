import 'package:flutter/material.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';

import 'button.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemCount: 5,
        itemBuilder: (_, int i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catchImg(
                  imgUrl: demoImg,
                  width: 200,
                  height: 250,
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'Product Name',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      'Price - ₹100',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: w * 0.5,
                  child: button(
                    text: 'Add to cart',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
