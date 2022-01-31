import 'package:flutter/material.dart';
import 'package:navi_kart/src/my_account/address.dart';
import 'package:navi_kart/src/my_account/orders/user_orders.dart';
import 'package:navi_kart/src/my_account/personal_details.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Personal Details'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PersonalDetails()),
            );
          },
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ),
        ListTile(
          title: Text('Address Details'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Address()),
            );
          },
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ),
        ListTile(
          title: Text('Order Details'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => OrderDetails()),
            );
          },
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ),
        ListTile(
          title: Text('Refer to your friends'),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) => Address()),
            // );
          },
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ),
      ],
    );
  }
}
