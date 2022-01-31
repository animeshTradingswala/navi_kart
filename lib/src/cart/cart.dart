import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';
import 'package:navi_kart/src/home/product_details/components/button.dart';
import 'package:navi_kart/src/home/product_details/peoduct_details.dart';
import 'package:navi_kart/src/payment/payments.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

import '../../const.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // flexibleSpace: gradiantAppBar(),
          leading: backButton(context),
          elevation: 0,
          title: const Text(
            'Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (_, __) => SizedBox(height: 5),
                  itemCount: 8,
                  itemBuilder: (_, int i) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ProductDetailsPage());
                      },
                      child: Card(
                        elevation: 8,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: catchImg(
                                imgUrl: demoImg,
                                width: 70,
                                height: 90,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Product Name",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        splashColor: black,
                                        splashRadius: 20,
                                        icon: Icon(
                                          Icons.delete_outline,
                                          color: Colors.red,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Size - 01",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Price - \$100",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              splashColor: black,
                                              splashRadius: 20,
                                              icon: Icon(
                                                Icons.add,
                                                color: white,
                                              ),
                                              onPressed: () {},
                                            ),
                                            Text(
                                              "01",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: white,
                                              ),
                                            ),
                                            IconButton(
                                              splashColor: black,
                                              splashRadius: 20,
                                              icon: Icon(
                                                Icons.remove,
                                                color: white,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Total Product(8) price",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "\$2500",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: w,
                        child: button(
                            text: 'Proceed to pay',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PaymentPage()));
                            })),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
