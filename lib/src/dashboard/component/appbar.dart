import 'package:flutter/material.dart';
import 'package:navi_kart/src/cart/cart.dart';

appbar(context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70.0),
    child: AppBar(
      elevation: 0,
      centerTitle: false,
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 30,
          ),
          const Text(" Mystery Trunk"),
        ],
      ),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartPage(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart_outlined)),
      ],
    ),
  );
}
