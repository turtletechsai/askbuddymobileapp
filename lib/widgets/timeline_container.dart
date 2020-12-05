import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../constants.dart';

class TimeLineContainer extends StatelessWidget {
  final isFirst,isLast,isDone;
  final String level,points;
  TimeLineContainer({this.points,this.isDone = false,this.level,this.isFirst = false,this.isLast =false});


  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      // afterLineStyle: const LineStyle(
      //   color: kGreen,
      //   thickness: 4,
      // ),
      // beforeLineStyle: const LineStyle(
      //   color: kGreen,
      //   thickness: 4,
      // ),
      indicatorStyle: IndicatorStyle(indicator: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xfff4ac3e)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              level,
              style: TextStyle(
                  color: Color(0xff541488),
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              'Level',
              style: TextStyle(
                  color: Color(0xff541488), fontSize: 15),
            )
          ],
        ),
      ),
        height: 60,
        width: 60,
      ),
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      isFirst: isFirst,
      isLast: isLast,
      startChild: isDone ? Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Icon(Icons.done,color: kWhite,),
              ),
            ),
          ],
        ),
      ) : SizedBox(
        height: 100,
      ),
      endChild: Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                  text: '$points Points',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),
                  children: [
                    TextSpan(
                        text: ' earn karein for level $level',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        )
                    )
                  ]
              ),

            )
          ],
        ),
      ),
    );
  }
}
