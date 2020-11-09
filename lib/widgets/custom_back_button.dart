import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';


class CustomBackButton extends StatelessWidget {
final Function onPressed;
final Color color;
final IconData icon;
final Color buttonColor;
final double elevation;
CustomBackButton({this.onPressed,this.color,this.icon,this.buttonColor = kWhite,this.elevation=10});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Container(
          height: 45,
          width: 45,
          child: Icon(
            icon,
            color: color,
            size: 30,
          )),
      shape: CircleBorder(),
      elevation: elevation,
      fillColor: buttonColor,
    );
  }
}