import 'package:flutter/material.dart';
import 'package:navi_kart/src/search/components/back_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: gradiantAppBar(),
        leading: backButton(context),
        elevation: 0,
        title: const Text(
          'Talk Wih Us',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              'assets/support.gif',
              width: w,
              height: 250,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'We are available',
            ),
            Text(
              '24 x 7 ',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Call us @ ',
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: _launchCaller,
                  child: Text(
                    '+91 411415454154',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Email us @ ',
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    launch('mailto:xyz@gmail.com?subject= &body= ');
                  },
                  child: Text(
                    'xyz@gmail.com',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  _launchCaller() async {
    const url = "tel:9475382132";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
