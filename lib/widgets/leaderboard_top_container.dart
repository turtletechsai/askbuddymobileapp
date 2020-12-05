import 'package:flutter/material.dart';

import '../constants.dart';


class LeaderBoardTopContainer extends StatelessWidget {
  final String rank,name,points;
  final Color color;
  LeaderBoardTopContainer({this.points,this.color,this.name,this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 110,
      child: Column(
        children: [
          Container(
            height : 100,
            width:100,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kDarkOrange
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',),
                      maxRadius: 40,
                      minRadius: 28,
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
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
                  fontSize: 18,
                  fontWeight: FontWeight.w500 ,
                  color: Color(0xff541488)
              ),
              overflow: TextOverflow.ellipsis,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flash_on_outlined,color: Colors.pinkAccent,),
              Text('43572',style: TextStyle(
                fontSize: 18,
              ),)
            ],
          )
        ],
      ),
    );
  }
}
