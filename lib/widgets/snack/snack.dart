import 'package:chat_box/util/style/constants.dart';
import 'package:chat_box/widgets/snack/app_snack.dart';
import 'package:flutter/material.dart';

void showSnack(BuildContext context, {String message, Color snackBackgroundColor, IconData icon}) {
  var snack = AppSnack(
      snackString: message,
      bgColor: snackBackgroundColor ?? kPrimaryColor,
      iconData: icon ?? Icons.error,
      textIconColor: Colors.white);
  ScaffoldMessenger.of(context).showSnackBar(snack.getSnackBar());
}
