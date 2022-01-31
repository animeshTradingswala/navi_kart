import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'authentication/login.dart';
import 'const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((val) {
    runApp(
      GetMaterialApp(
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        theme: ThemeData(
          brightness: Brightness.dark,
          /* light theme settings */
        ),
        debugShowCheckedModeBanner: false,
        title: 'Mystery Trunk',
        home: MyApp(),
      ),
    );
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // Get.offAll(() => AppIntro());
      // Get.offAll(() => Auth());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      // !sp.isLogin()! ? Get.off(() => Auth()) : Get.off(() => Dashboard());
    });
  }

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    // return ScreenUtilInit(
    //   designSize: Size(width, height),
    //   builder: () => const SplashScreen(),
    // );
    return SplashScreen();
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        color: white.withOpacity(0.15),
        child: Image.asset(
          'assets/logo.png',
          width: 150,
        ),
      ),
    );
  }
}
