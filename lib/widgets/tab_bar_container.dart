import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class TabBarContainer extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function onPressed;
  TabBarContainer({this.text,this.isSelected,this.onPressed});

  @override
  _TabBarContainerState createState() => _TabBarContainerState();
}

class _TabBarContainerState extends State<TabBarContainer> {


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xffe4ddfb)),
        child: RaisedButton(
          onPressed: widget.onPressed,
          child: Center(
              child: Text(
            widget.text,
            style: TextStyle(color: kMainThemeColor),
          )),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide.none),
            color: widget.isSelected ? kSecondaryColor : kWhite,
          disabledColor: kWhite,
          elevation: 0,

        ));
  }
}
