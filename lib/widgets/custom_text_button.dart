import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class CustomTextButton extends StatelessWidget {
  final List<Widget> list;
  final double elevation;
  final double height;
  final Color color;
  CustomTextButton({@required this.list,this.elevation,this.height = 45,this.color =kWhite});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: height,
      child: RaisedButton(
        onPressed: () {},
        color: color,
        elevation: elevation,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        disabledColor: color,
        child: Row(
          children: list,
        ),
      ),
    );
  }
}