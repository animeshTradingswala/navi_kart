import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

class MoreOrderDetails extends StatelessWidget {
  const MoreOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("More Order Info About 'Product Name'"),
          leading: backButton(context),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catchImg(imgUrl: demoImg, width: w, height: 350),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Product Name - \$1000",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Buyer Name - Animesh Banerjee",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Seller Name - Animesh Banerjee",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Purchase Date - 11.02.20",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Delivary Date - 02.11.20",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Delivary Location - Kolkata",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Paid Amount Breakdown",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Original Product Price - \$ 250',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Paid Amount - \$1",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Product Price - \$111",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'GST: \$24',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Delivery Boy Charges: \$15',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Offer Applied: \$15',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
