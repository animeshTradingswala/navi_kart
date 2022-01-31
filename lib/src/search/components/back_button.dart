import 'package:flutter/material.dart';

Widget backButton(
  context,
) {
  return InkWell(
    splashColor: Colors.black.withOpacity(0.2),
    highlightColor: Colors.transparent,
    onTap: () {
      Navigator.pop(context);
    },
    child: const Icon(
      Icons.arrow_back_ios_new_outlined,
      color: Colors.grey,
      size: 15,
    ),
  );
}
