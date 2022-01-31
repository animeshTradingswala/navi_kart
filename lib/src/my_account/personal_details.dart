import 'package:flutter/material.dart';
import 'package:navi_kart/src/my_account/components/buttons.dart';
import 'package:navi_kart/src/search/components/back_button.dart';

import 'components/text_form.dart';

class PersonalDetails extends StatelessWidget {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Personal Details"),
          leading: backButton(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      FormApplication(
                        validator: (v) {},
                        labelText: 'Full Name...',
                        ifDone: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormApplication(
                        validator: (v) {},
                        labelText: 'Email...',
                        ifDone: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FormApplication(
                        validator: (v) {},
                        labelText: 'Phone Number...',
                        ifDone: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 8,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.female),
                                  const Text('Female'),
                                  Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 8,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.male),
                                  const Text("Male"),
                                  Radio(
                                    value: 0,
                                    groupValue: _value,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: accountButtons(
                        text: 'Save and Exit',
                        onPressed: () {},
                        btnColor: Colors.teal),
                  ),
                  SizedBox(
                    width: 150,
                    child: accountButtons(
                        text: 'Cancel',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        btnColor: Colors.redAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
