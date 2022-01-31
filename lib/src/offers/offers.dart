import 'package:flutter/material.dart';
import 'package:navi_kart/const.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: gradiantAppBar(),
        leading: backButton(context),
        elevation: 0,
        title: const Text(
          'Offers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (_, __) => SizedBox(
          height: 5,
        ),
        itemCount: 4,
        itemBuilder: (_, int i) {
          return Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Flat 100% OFF',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Cupon code 'FREE100'",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Expire in 1000 days',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Upto Rs 1000 on minimum purchase of Rs 9999',
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'More details + ',
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: white,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          'FREE100',
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
