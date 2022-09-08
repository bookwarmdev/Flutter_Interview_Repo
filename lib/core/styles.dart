import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// https://material.io/design/typography/the-type-system.html

class AppStyle {
  static final headline1 = GoogleFonts.nunito(
    fontSize: 97,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    color: Colors.black,
  );
  static final headline2 = GoogleFonts.nunito(
    fontSize: 61,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: Colors.black,
  );
  static final headline3 = GoogleFonts.nunito(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final headline4 = GoogleFonts.nunito(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black,
  );
  static final headline5 = GoogleFonts.nunito(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final headline6 = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Colors.black,
  );
  static final subtitle1 = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Colors.black,
  );
  static final subtitle2 = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: Colors.black,
  );
  static final bodyText1 = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: Colors.black,
  );
  static final bodyText2 = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black,
  );
  static final button = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: Colors.black,
  );
  static final caption = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: Colors.black,
  );
  static final overline = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Colors.black,
  );
}
