import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class AchievementsContainer extends StatelessWidget {
  final Widget child;
  AchievementsContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0,0.0),
                blurRadius: 5
            )
          ],
      ),
      child: child,
    );
  }
}