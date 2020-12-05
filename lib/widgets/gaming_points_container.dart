import 'package:flutter/material.dart';
import 'package:studygroups/pages/popups/daily_attendance_reward.dart';

import '../constants.dart';

class GamingPointsContainer extends StatelessWidget {
  final String points,day;
  GamingPointsContainer({this.points,this.day});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context,
        child: AlertDialog(
          content: DailyAttendanceRewardPopup(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 110,
        child: Column(
          children: [
            Container(
              height: 78,
              width: 78,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff79e87d)
              ),
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff57bd5b)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(points,style: TextStyle(
                        fontSize: 22,
                        color: kWhite,
                        fontWeight: FontWeight.w900
                    ),),
                    Text('Points',style: TextStyle(
                        color: kWhite
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('Day $day',style: TextStyle(
                  color: Color(0xff57bd5b),
                  fontSize: 18
              ),),
            )
          ],
        ),
      ),
    );
  }
}