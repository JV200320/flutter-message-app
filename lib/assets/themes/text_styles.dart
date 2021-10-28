import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final messageBodyBlack = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final messageBodyWhite = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final messageAuthor = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static final greeting = GoogleFonts.montserrat(
      fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white);

  static final greetingUsername = GoogleFonts.montserrat(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white);

  static final messageInput = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final loginButton = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final titleLogin = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    decoration: TextDecoration.none,
  );
}
