import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class SubjectContainer extends StatelessWidget {
  final Color containerColor,iconBgColor;
  final IconData icon;
  final String text;
  final Function onTap;


  SubjectContainer({this.containerColor, this.iconBgColor, this.icon, this.text,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 110,
        width: 80,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: iconBgColor,
              child: Icon(icon,color: kWhite),
            ),
            Text(text,style: kPrimaryTextStyle.copyWith(
              color: kBlack,fontWeight: FontWeight.w500,fontSize: 12
            ),)
          ],
        ),
      ),
    );
  }
}