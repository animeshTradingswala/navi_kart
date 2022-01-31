import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:navi_kart/src/home/product_details/peoduct_details.dart';
import 'package:navi_kart/src/search/search_page.dart';

import '../../const.dart';
import 'components/our_product_text.dart';
import 'components/product_heading.dart';
import 'components/rating.dart';
import 'components/search_box.dart';
import 'components/slider_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedIndex;
  bool isFevTapped = false;

  @override
  Widget build(BuildContext context) {
    debugPrint("selectedIndex $selectedIndex");
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ourProduct(),
              const SizedBox(
                height: 20,
              ),
              /* ~~~~~~~~~~~~~~~~~~~~~~ search box ~~~~~~~~~~~~~~~~~~~~~~ */
              searchComponent(context),
              const SizedBox(
                height: 10,
              ),
              ImageSliderComponent(),
              const SizedBox(
                height: 10,
              ),
              /* ~~~~~~~~~~~~~~~~~~~~~~ categories ~~~~~~~~~~~~~~~~~~~~~~ */
              SizedBox(
                width: w,
                height: 50,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __) => const SizedBox(
                          width: 5,
                        ),
                    itemCount: 10,
                    itemBuilder: (_, int i) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SearchPage(),
                            ),
                          ); //.then((value) => selectedIndex = 0);
                          setState(() {
                            selectedIndex = i;
                          });
                          debugPrint("index $i");
                        },
                        child: Card(
                          elevation: 8,
                          shape: selectedIndex != i
                              ? const StadiumBorder(
                                  side: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                )
                              : const StadiumBorder(
                                  side: BorderSide(
                                    color: white,
                                    width: 2.0,
                                  ),
                                ),
                          child: const SizedBox(
                            width: 80,
                            child: Center(
                              child: Text('s'),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              /* ~~~~~~~~~~~~~~~~~~~~~~ products heading ~~~~~~~~~~~~~~~~~~~~~~ */
              productHeading('New Products', 'Show all'),
              const SizedBox(
                height: 20,
              ),
              /* ~~~~~~~~~~~~~~~~~~~~~~ products ~~~~~~~~~~~~~~~~~~~~~~ */
              SizedBox(
                width: w,
                height: 250,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 10,
                    itemBuilder: (_, int i) {
                      return InkWell(
                        // splashFactory: NoSplash.splashFactory,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ProductDetailsPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white,
                                // width: 2,
                              )),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    child: IconButton(
                                      splashRadius: 15,
                                      onPressed: () {
                                        setState(() {
                                          isFevTapped = !isFevTapped;
                                        });
                                      },
                                      icon: Icon(
                                        isFevTapped == false
                                            ? Icons.favorite_border
                                            : Icons.favorite,
                                        color: isFevTapped == false
                                            ? Colors.grey
                                            : Colors.pink,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 100.0,
                                height: 70.0,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      'https://png.pngtree.com/element_our/20200609/ourlarge/pngtree-healthcare-products-image_2224364.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Product Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              RatingBar(),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '\$100',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '10 Left',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 100.0,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.white,
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.white.withOpacity(.2),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.add_shopping_cart,
                                  ),
                                  label: const Text(
                                    'Cart',
                                    style: TextStyle(
                                      // fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              /* ~~~~~~~~~~~~~~~~~~~~~~ products heading ~~~~~~~~~~~~~~~~~~~~~~ */
              productHeading('Offered Products', 'Show all'),
              const SizedBox(
                height: 20,
              ),
              /* ~~~~~~~~~~~~~~~~~~~~~~ products ~~~~~~~~~~~~~~~~~~~~~~ */
              SizedBox(
                width: w,
                height: 250,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 10,
                    itemBuilder: (_, int i) {
                      return InkWell(
                        // splashFactory: NoSplash.splashFactory,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white,
                                // width: 2,
                              )),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    child: IconButton(
                                      splashRadius: 15,
                                      onPressed: () {
                                        setState(() {
                                          isFevTapped = !isFevTapped;
                                        });
                                      },
                                      icon: Icon(
                                        isFevTapped == false
                                            ? Icons.favorite_border
                                            : Icons.favorite,
                                        color: isFevTapped == false
                                            ? Colors.grey
                                            : Colors.pink,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 100.0,
                                height: 70.0,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      'https://png.pngtree.com/element_our/20200609/ourlarge/pngtree-healthcare-products-image_2224364.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Product Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '\$100',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '10 Left',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 100.0,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.white,
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.white.withOpacity(.2),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.add_shopping_cart,
                                  ),
                                  label: const Text(
                                    'Cart',
                                    style: TextStyle(
                                      // fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
