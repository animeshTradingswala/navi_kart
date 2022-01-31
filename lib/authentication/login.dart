import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navi_kart/authentication/compoment/form.dart';
import 'package:navi_kart/authentication/compoment/image.dart';
import 'package:navi_kart/src/dashboard/dashboard.dart';

import '../const.dart';
import 'registation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Login with Mystery Trunk',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const ImageComponent(
                img: 'assets/login.png',
              ),
              const SizedBox(
                height: 20,
              ),
              TextForm(
                validator: (v) {},
                hintText: 'Username ....',
                obscureText: false,
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              TextForm(
                validator: (v) {},
                hintText: 'Password ....',
                obscureText: false,
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text('Forgotten password'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: w / 1.2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white.withOpacity(.05),
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Dashboard(),
                      ),
                    );
                  },
                  child: const Text("LOGIN"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => RegistrationPage(),
                    ),
                  );
                },
                child: Text('Haven\'t new account ? Tap here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
