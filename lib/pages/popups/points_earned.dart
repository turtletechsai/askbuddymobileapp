import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/pages/popups/next_level_reached.dart';

class PointsEarnedPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: Color(0xff541488),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.flash_on_outlined,color: Colors.pinkAccent,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text('10',
                      style: TextStyle(
                        fontSize: 28,
                        color: kWhite,
                        fontWeight: FontWeight.w500
                      ),),
                      Text('Points',style: TextStyle(
                          color: kWhite
                      ),
                      ),
                    ],
                  ),
                ],
              ),
              Text('Earned',style: TextStyle(
                color: kWhite
              ),)
            ],
          ),
        ),
      ],
    );
  }
}
