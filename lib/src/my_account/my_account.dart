import 'package:flutter/material.dart';
import 'package:navi_kart/src/my_account/components/component1.dart';
import 'package:navi_kart/src/my_account/components/component2.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // flexibleSpace: gradiantAppBar(),
          leading: backButton(context),
          elevation: 0,
          title: const Text(
            'My Account',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  ProfilePicture(),
                  const SizedBox(
                    height: 10,
                  ),
                  AccountOptions(),
                ],
              ),
            ),
            Text(
              'App version - 1.0.0',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
