import 'package:flutter/material.dart';

Widget button({
  required String text,
  required void Function()? onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(Colors.white.withOpacity(.05)),
      // padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
      // foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.white60),
        ),
      ),
    ),
  );
}
