import 'package:flutter/material.dart';

import '../constants.dart';


class ChallengesSubjectContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Function onTap;
  ChallengesSubjectContainer({this.text,this.icon,this.color,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Icon(icon,
              color: color,),
            SizedBox(width: 10,),
            Expanded(
              child: Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            )
          ],
        ),
      ),
    );
  }
}