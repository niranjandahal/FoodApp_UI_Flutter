import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tittletext(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 34,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget darktittle(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 34,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget subtittle(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.08,
      ),
    ),
  );
}

Widget mediumtext(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
      textStyle: TextStyle(
        fontSize: 16,
        // fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    ),
  );
}

Widget minortext(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
      textStyle: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
    ),
  );
}
