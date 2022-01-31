import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

import 'order_more_details.dart';

class OrderDetails extends StatefulWidget {
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final int _index = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Order Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          leading: backButton(context),
        ),
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (_, __) => SizedBox(
            height: 5,
          ),
          itemCount: 3,
          itemBuilder: (_, int i) {
            return Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    catchImg(imgUrl: demoImg, width: w, height: 320),
                    SizedBox(
                      height: 10,
                    ),
                    // Center(
                    //   child: RatingBar.builder(
                    //     initialRating: 0,
                    //     minRating: 0,
                    //     direction: Axis.horizontal,
                    //     allowHalfRating: false,
                    //     itemCount: 5,
                    //     itemBuilder: (context, _) => NeumorphicIcon(
                    //       Icons.local_fire_department_sharp,
                    //       style: const NeumorphicStyle(
                    //         color: red,
                    //       ),
                    //     ),
                    //     onRatingUpdate: (rating) {
                    //       print(rating);
                    //     },
                    //   ),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        'Product Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Date of purchase : 20.12.20',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Price - \$20',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Stepper(
                      physics: NeverScrollableScrollPhysics(),
                      steps: [
                        Step(
                          isActive: true,
                          title: Text(
                            'Product Purchase - ',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          content: Text(
                            '',
                          ),
                        ),
                        Step(
                          title: Text(
                            'Product Out for delivary',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          content: Text(''),
                        ),
                        Step(
                          title: Text(
                            'Product Delivared',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          content: Text(''),
                        ),
                      ],
                      currentStep: _index,
                      controlsBuilder: (__, _) => const SizedBox(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.to(() => MoreOrderDetails());
                          },
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => MoreOrderDetails()));
                            },
                            child: Text(
                              'More Info + ',
                            ),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text('Cupon Applied - "FREE100"')),
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
      ),
    );
  }
}
