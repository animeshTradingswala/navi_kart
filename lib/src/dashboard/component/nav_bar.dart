import 'package:flutter/material.dart';

import '../../../const.dart';

Widget navBarComponent({
  required int currentIndex,
  required void Function(int)? onTap,
}) {
  return Theme(
    data: ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
    child: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tv),
          label: 'Studio',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: white,
      unselectedItemColor: Colors.grey.withOpacity(0.3),
      onTap: onTap,
      iconSize: 20,
      backgroundColor: Colors.grey.withOpacity(0),
      elevation: 0,
      showUnselectedLabels: false,
    ),
  );
}
