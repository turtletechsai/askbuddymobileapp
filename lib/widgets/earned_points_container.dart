import 'package:flutter/material.dart';

import '../constants.dart';
import 'achievements_container.dart';

class EarnedPointsContainer extends StatelessWidget {
  final String points,text;
  EarnedPointsContainer({this.points,this.text});

  @override
  Widget build(BuildContext context) {
    return AchievementsContainer(
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.flash_on_outlined,color: Colors.pinkAccent,),
                  Text('$points ',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff541488),
                        fontWeight: FontWeight.w600
                    ),)
                ],
              ),
              Text('Points',
                style: TextStyle(
                    color: kGrey
                ),)
            ],
          ),
          SizedBox(width: 8,),
          Flexible(child: Text(text,style: TextStyle(
              color: Colors.grey[600]
          ),)),
          IconButton(icon: Icon(Icons.chevron_right), onPressed: null)
        ],
      ),
    );
  }
}
