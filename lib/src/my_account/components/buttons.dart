import 'package:flutter/material.dart';

import '../../../const.dart';

Widget accountButtons({
  required String text,
  required void Function()? onPressed,
  required Color btnColor,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
      backgroundColor: MaterialStateProperty.all<Color>(btnColor),
      foregroundColor: MaterialStateProperty.all<Color>(white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: white),
        ),
      ),
    ),
  );
}
