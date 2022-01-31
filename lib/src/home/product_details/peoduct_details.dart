import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navi_kart/src/cart/cart.dart';
import 'package:navi_kart/src/home/product_details/components/component1.dart';
import 'package:navi_kart/src/home/product_details/components/components3.dart';
import 'package:navi_kart/src/home/product_details/components/components4.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

import '../../../const.dart';
import 'components/button.dart';
import 'components/components2.dart';
import 'components/related_products.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int? _groupValue = 0;
  bool cartPressed = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          splashColor: Colors.transparent,
          // backgroundColor: black,Colors.white.withOpacity(.05)
          backgroundColor: Colors.white.withOpacity(.05),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CartPage(),
              ),
            );
          },
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: white,
            size: 25,
          ),
        ),
        appBar: AppBar(
          // flexibleSpace: gradiantAppBar(),
          leading: backButton(context),
          elevation: 0,
          title: const Text(
            'Products Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              splashRadius: 20,
              splashColor: black,
              onPressed: () {
                // shareThings(shareText: "Yo ho !");
              },
              icon: const Icon(
                Icons.share_outlined,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CarouselSlider.builder(
              //   itemCount: 2,
              //   options: CarouselOptions(
              //     autoPlay: true,
              //     aspectRatio: 1.0,
              //     enlargeCenterPage: true,
              //   ),
              //   itemBuilder: (context, index, realIdx) {
              //     return CachedNetworkImage(
              //       imageUrl: demoImg,
              //       placeholder: (context, url) =>
              //           const Center(child: CupertinoActivityIndicator()),
              //       errorWidget: (context, url, error) => const Icon(
              //         Icons.image_not_supported_outlined,
              //         color: red,
              //       ),
              //       width: w,
              //       fit: BoxFit.fill,
              //     );
              //   },
              // ),
              const ManuallyControlledSlider(),
              const SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Product Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            '4.5 🔥',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Product Breaf',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Product Size (if available)',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: w,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (_, int i) {
                            return Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _groupValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _groupValue = value;
                                    });
                                  },
                                ),
                                Text(
                                  '$i',
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      const ProductDetails(),
                      const SizedBox(height: 10),
                      const HowtoUse(),
                      const SizedBox(height: 10),
                      const SellerDetails(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            splashRadius: 20,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.white.withOpacity(0.4),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_shopping_cart,
                            ),
                          ),
                          SizedBox(
                            width: w * 0.7,
                            child: button(
                              text: 'Buy Now \$100',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Related Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const RelatedProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
