import 'package:flutter/material.dart' show FontWeight, Color;
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static getNunito(
          {double? fontSize = 14.0,
          FontWeight? fw = FontWeight.w400,
          Color? color}) =>
      GoogleFonts.nunito(
        fontSize: fontSize,
        fontWeight: fw,
        color: color,
      );
}
