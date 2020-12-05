import 'package:flutter/material.dart';

import '../constants.dart';
import 'achievements_container.dart';

class LeaderboardContainer extends StatelessWidget {
  final String rank,name,points;
  LeaderboardContainer({this.rank,this.name,this.points});

  @override
  Widget build(BuildContext context) {
    return AchievementsContainer(
        child : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(rank,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                  ),
                  SizedBox(width: 10,),
                  Text(name,
                    style: TextStyle(
                        color: kGrey,
                        fontSize: 16
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,)
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.flash_on_outlined,color: Colors.pinkAccent,),
                  Text(points,style: TextStyle(
                    fontSize: 18,
                  ),)
                ],
              ),
            )
          ],
        )
    );
  }
}