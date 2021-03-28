import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle splashTextStyle = GoogleFonts.quicksand(
    fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.red);

OutlineInputBorder nonFocusedOutlineBorderLight = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderSide: BorderSide(color: Colors.red, width: 2),
);

OutlineInputBorder focusedOutlineBorderLight = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderSide: BorderSide(color: Colors.blue, width: 2),
);

OutlineInputBorder nonFocusedOutlineBorderDark = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderSide: BorderSide(color: Colors.yellow, width: 2),
);

OutlineInputBorder focusedOutlineBorderDark = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderSide: BorderSide(color: Colors.teal, width: 2),
);
