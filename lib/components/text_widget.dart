import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text textWidget(String string, Color color) {
  return Text(
    string,
    style: GoogleFonts.lato(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color,
    ),
  );
}
