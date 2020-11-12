import 'package:flutter/material.dart';

BoxDecoration kBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        offset: Offset(0.0, 2.0),
        blurRadius: 5,
      )
    ],
    color: kWhite
);

const Color kMainThemeColor = Color(0xff7755ec);
const Color kWhite = Colors.white;
const Color kBlack = Colors.black;
const Color kSecondaryColor = Color(0xffe4ddfb);
const Color kOrange = Color(0xffffb64b);
const Color kGrey = Colors.grey;
Color kGreyLite = Colors.grey[400];
const Color kBlue = Color(0xff029cf5);
const Color kLiteWhite = Color(0xfff9f8f6);
const Color kGreen = Color(0xff13ae80);
const Color kLitePurple = Color(0xff9b9def);
const Color kLiteRed = Color(0xfff8a6a5);

TextStyle kPrimaryTextStyle = TextStyle(
  color: kMainThemeColor,
);

TextStyle kSecondTextStyle = TextStyle(
    color: kBlack, fontSize: 22, fontWeight: FontWeight.w500);

const SizedBox kSizedBox = SizedBox(
  height: 34,
  child: Divider(

  ),
);