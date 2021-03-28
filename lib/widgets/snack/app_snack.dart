import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSnack {
  String snackMessage;
  IconData iconData;
  Color backgroundColor;
  Color textIconColor;

  AppSnack({@required String snackString, IconData iconData, Color bgColor, Color textIconColor}) {
    this.snackMessage = snackString;
    this.iconData = iconData;
    this.backgroundColor = bgColor;
    this.textIconColor = textIconColor;
  }

  SnackBar getSnackBar() {
    return SnackBar(
        elevation: 6.0,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            iconData != null
                ? Icon(
                    this.iconData,
                    color: this.textIconColor,
                    size: 15.0,
                  )
                : SizedBox(
                    height: 0,
                    width: 0,
                  ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Text(
                this.snackMessage,
                style: GoogleFonts.quicksand(fontSize: 12.0, color: this.textIconColor),
              ),
            )
          ],
        ));
  }
}
