import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle rubik({
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.black,
}) =>
    GoogleFonts.rubik(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
