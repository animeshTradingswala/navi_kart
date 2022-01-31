import 'package:flutter/material.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';
import 'package:navi_kart/src/wishlist/components/component1.dart';

import 'components/component2.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemCount: 8,
          itemBuilder: (_, int i) {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                // Get.to(() => ProductDetailsPage());
              },
              child: Card(
                elevation: 8,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: catchImg(
                        imgUrl: demoImg,
                        width: 70,
                        height: 90,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        component1(context),
                        component2(context),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
