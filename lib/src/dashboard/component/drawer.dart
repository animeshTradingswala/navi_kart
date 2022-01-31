import 'package:flutter/material.dart';
import 'package:navi_kart/const.dart';
import 'package:navi_kart/src/all_categories/all_cat.dart';
import 'package:navi_kart/src/feedback/feedback.dart';
import 'package:navi_kart/src/magazine/magazine.dart';
import 'package:navi_kart/src/my_account/my_account.dart';
import 'package:navi_kart/src/offers/offers.dart';
import 'package:navi_kart/src/support/support.dart';
import 'package:navi_kart/src/t&c/t_c.dart';

Widget drawer(context) {
  return Drawer(
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
            child: Column(
              children: [
                Image.asset('assets/head.png'),
                const Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MyAccount(),
              ),
            );
          },
          leading: const Icon(Icons.person_outline),
          title: const Text('My Account'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AllCategories(),
              ),
            );
          },
          leading: const Icon(Icons.category_outlined),
          title: const Text('All category'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Offers(),
              ),
            );
          },
          leading: const Icon(Icons.local_offer_sharp),
          title: const Text('Offers'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Magazine(),
              ),
            );
          },
          leading: const Icon(Icons.thumbs_up_down_outlined),
          title: const Text('Magazine'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SupportPage(),
              ),
            );
          },
          leading: const Icon(Icons.phone_in_talk_outlined),
          title: const Text('Talk with us'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.group_outlined),
          title: const Text('About us'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TermsAndCondition(),
              ),
            );
          },
          leading: const Icon(Icons.view_quilt_outlined),
          title: const Text('Terms & Conditions'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FeedbackPage(),
              ),
            );
          },
          leading: const Icon(Icons.feedback_outlined),
          title: const Text('Feedback'),
          iconColor: white,
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.logout_outlined),
          title: const Text('Logout'),
          iconColor: white,
        ),
      ],
    ),
  );
}
