import 'package:flutter/material.dart';
import 'package:navi_kart/const.dart';
import 'package:navi_kart/src/home/product_details/components/button.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

import 'components/text_form.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Address Details"),
        leading: backButton(context),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                width: w,
                child: button(
                  text: 'Current Location',
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                      child: Divider(
                    thickness: 1,
                    color: white,
                  )),
                  Text(' Or '),
                  Flexible(
                      child: Divider(
                    thickness: 1,
                    color: white,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FormApplication(
                ifDone: false,
                labelText: 'Add address here...',
                validator: (v) {},
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(
                  height: 15,
                ),
                itemCount: 10,
                itemBuilder: (_, int i) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('A2, kolkata - 713216, WB, India'),
                      IconButton(
                        splashRadius: 15,
                        splashColor: black,
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
