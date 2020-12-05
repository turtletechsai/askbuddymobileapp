import 'package:flutter/material.dart';

import '../constants.dart';

class GamingLeaderboardContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 140,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 12,top: 4),
            height : 75,
            width: 75,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',),
                    maxRadius: 32,
                    minRadius: 28,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: kDarkOrange,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: kWhite,width: 2)
                    ),
                    child: Center(child: Text('1',style: TextStyle(
                        color: kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    ),)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
            child: Text('Vikash Gup',
              style: TextStyle(
                  fontSize: 18
              ),
              overflow: TextOverflow.ellipsis,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flash_on_outlined,color: Colors.pinkAccent,),
              Text('43572',style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff541488),
                  fontWeight: FontWeight.w500
              ),)
            ],
          )
        ],
      ),
    );
  }
}