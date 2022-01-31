import 'package:flutter/material.dart';

class HowtoUse extends StatelessWidget {
  const HowtoUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      tilePadding: EdgeInsets.zero,
      initiallyExpanded: false,
      childrenPadding: EdgeInsets.fromLTRB(0, 0, 100, 0),
      title: Text(
        'How to use',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      // subtitle: Text('subtitle'),
      children: [
        Text(
          'How to use\n\n How to use \n\n How to use',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
