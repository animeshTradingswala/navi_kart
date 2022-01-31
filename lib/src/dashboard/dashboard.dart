import 'package:flutter/material.dart';
import 'package:navi_kart/src/home/home.dart';
import 'package:navi_kart/src/studio/studio.dart';
import 'package:navi_kart/src/wishlist/wishlist.dart';

import 'component/appbar.dart';
import 'component/drawer.dart';
import 'component/nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    WishlistPage(),
    StudioPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar(context),
        drawer: drawer(context),
        body: Center(
          child: _widgetOptions.elementAt(
            _selectedIndex,
          ),
        ),
        bottomNavigationBar: navBarComponent(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
