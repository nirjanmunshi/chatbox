import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle splashTextStyle = GoogleFonts.quicksand(
    fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.red);

TextStyle loginTextStyle = GoogleFonts.quicksand(
  color: Colors.black,
  fontSize: 14.0,
);

TextStyle registrationButtonTextStyle = GoogleFonts.quicksand(
  color: Colors.green[900],
  fontSize: 14.0,
);

TextStyle alreadyRegisteredButtonTextStyle = GoogleFonts.quicksand(
  color: Colors.blue[900],
  fontSize: 14.0,
);

OutlineInputBorder nonFocusedOutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderSide: BorderSide(color: Colors.grey, width: 2),
);

OutlineInputBorder focusedOutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
  borderSide: BorderSide(color: Colors.blue, width: 2),
);
