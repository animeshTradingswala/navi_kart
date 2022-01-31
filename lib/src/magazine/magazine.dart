import 'package:flutter/material.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

class Magazine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: gradiantAppBar(),
        leading: backButton(context),
        elevation: 0,
        title: const Text(
          'Our Magazine',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        separatorBuilder: (_, __) => const Divider(
          color: Colors.grey,
          thickness: 5,
        ),
        itemCount: 10,
        itemBuilder: (_, int i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catchImg(
                  imgUrl:
                      "https://www.haptik.ai/hs-fs/hubfs/Business%20Blog/How%20to%20Engage%20and%20Serve%20Customers%20over%20WhatsApp/re-engaging-customers-2.png?width=315&name=re-engaging-customers-2.png",
                  width: w,
                  height: 500,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Customer Name - Animesh Banerjee',
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Customer Rating - 5',
                    ),
                    catchImg(imgUrl: demoImg, width: 70, height: 70),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
