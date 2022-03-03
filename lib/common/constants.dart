import 'package:flutter/material.dart';

Color kprimarytextColor = const Color(0xFF000000);
Color ktextColor2 = const Color(0xFF88A1C8);
Color kprimaryCollor = const Color(0xFF37B899);
Color kgreyCollor = const Color(0xFF88A1C8);
Color klightGreyCollor = const Color(0xFFECF0FF);
Color kBlackCollor =  Colors.black;
Color kWhiteCollor =  Colors.white;

const kDuration = Duration(milliseconds: 300);
const kCurve = Curves.ease;

const String fontFamily = "Sofia";
FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

TextStyle primaryTextStyle =
    TextStyle(color: kprimarytextColor, fontFamily: fontFamily);
TextStyle secondaryTextStyle =
    TextStyle(color: ktextColor2, fontFamily: fontFamily);

double defaultMargin = 24;

List<BoxShadow> boxShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(0.5),
      spreadRadius: 0,
      blurRadius: 40,
      offset: const Offset(0, 20))
];
