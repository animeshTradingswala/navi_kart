import 'package:flutter/material.dart';
import 'package:navi_kart/authentication/login.dart';

import '../const.dart';
import 'compoment/form.dart';
import 'compoment/image.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

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
            'Register with Mystery Trunk',
            style: TextStyle(
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const ImageComponent(
                img: 'assets/register.png',
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
                hintText: 'Confirm Password ....',
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
              TextForm(
                validator: (v) {},
                hintText: 'Confirm Password ....',
                obscureText: false,
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                width: w / 1.2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white.withOpacity(.05),
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("REGISTER"),
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
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
                child: Text('Want to login ! Tap here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
