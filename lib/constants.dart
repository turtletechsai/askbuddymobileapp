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