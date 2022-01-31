import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navi_kart/const.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';

import 'components/back_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: backButton(context),
          elevation: 0,
          title: const Text(
            'Search anything here',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaY: 15,
                        sigmaX: 15,
                      ),
                      child: Container(
                        width: w,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(right: w / 30),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.05),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          autofocus: true,
                          keyboardAppearance: Brightness.dark,
                          style: TextStyle(color: Colors.white.withOpacity(.8)),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(.7),
                            ),
                            border: InputBorder.none,
                            hintMaxLines: 1,
                            hintText: 'Search here',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(.5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: w,
                  height: 70,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: 10,
                    ),
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (_, int i) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          // Get.to(() => ProductDetailsPage());
                        },
                        child: Chip(
                          elevation: 8,
                          padding: const EdgeInsets.all(8),
                          backgroundColor: black.withOpacity(0.1),
                          avatar: const CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(demoImg), //NetwordImage
                          ), //CircleAvatar
                          label: const Text(
                            'Water Bottle',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Product Name',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: w,
                  child: ListView.separated(
                    separatorBuilder: (_, __) => const SizedBox(
                      width: 10,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (_, int i) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          // Get.to(() => ProductDetailsPage());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  catchImg(
                                      imgUrl: demoImg, width: 70, height: 70),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Product Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: white.withOpacity(0.05),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
