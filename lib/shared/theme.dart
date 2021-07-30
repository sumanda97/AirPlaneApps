import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 24;

//COLOUR
const kblueColor = Color(0xFF5C40CC);
const kblackColor = Color(0xFF1F1449);
const kgreyColor = Color(0xFF9698A9);
const kavaibleColor = Color(0xFFE0D9FF);
const kselectedColor = Color(0xFF5C40CC);
const kunavaibleColor = Color(0xFFEBECF1);
const kgrenColor = Color(0xFF0EC3AE);
const kredColor = Color(0xFFEB70A5);
const kBackgroundWhiteColor = Color(0xFFFAFAFA);
const kBackgroundtextfieldColor = Color(0xFFDBD7EC);
const kTranparant = Colors.transparent;

// TEXT STYLE
TextStyle whiteFontStyle = GoogleFonts.poppins()
    .copyWith(color: Color(0xFFFFFFFF), fontSize: 24, fontWeight: semibold);

TextStyle titleFontStyle = GoogleFonts.poppins()
    .copyWith(color: Color(0xFF1F1449), fontSize: 24, fontWeight: semibold);

TextStyle subtitleFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Color(0xFF1F1449), fontSize: 18, fontWeight: semibold);

TextStyle subtitleFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Color(0xFF9698A9), fontSize: 16, fontWeight: light);

TextStyle subtitleFontStyle3 = GoogleFonts.poppins()
    .copyWith(color: Color(0xFF1F1449), fontSize: 14, fontWeight: light);

TextStyle subtitleredFontStyle = GoogleFonts.poppins()
    .copyWith(color: kredColor, fontSize: 14, fontWeight: light);
TextStyle subtitlegreenFontStyle = GoogleFonts.poppins()
    .copyWith(color: kgrenColor, fontSize: 14, fontWeight: light);

// FONT WEIGHT
FontWeight light = FontWeight.w300;
FontWeight bold = FontWeight.bold;
FontWeight medium = FontWeight.w500;
FontWeight reguler = FontWeight.w400;
FontWeight semibold = FontWeight.w600;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;
