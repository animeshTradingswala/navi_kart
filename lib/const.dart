import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

const Color white = Colors.white;
const Color black = Colors.black;

/// ############### share ###################
shareThings({required String shareText, String? subject}) {
  return Share.share(
    shareText,
    subject: subject,
  );
}

/// ############### toaste ##################
showToast(msg, color) => Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM_RIGHT,
    timeInSecForIosWeb: 1,
    backgroundColor: color,
    textColor: white,
    fontSize: 16.0);

toastCancel() => Fluttertoast.cancel();
