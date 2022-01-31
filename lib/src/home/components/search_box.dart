import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navi_kart/src/search/search_page.dart';

Widget searchComponent(context) {
  double w = MediaQuery.of(context).size.width;
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () {
      debugPrint('d');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SearchPage(),
        ),
      );
    },
    child: Padding(
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
              height: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.only(right: w / 30),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.05),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    ),
  );
}
