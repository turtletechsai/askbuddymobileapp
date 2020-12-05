import 'package:flutter/material.dart';

import '../constants.dart';


class LeaderBoardTop3Container extends StatelessWidget {
  final String rank,name,points;
  final Color color;
  LeaderBoardTop3Container({this.points,this.color,this.name,this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 110,
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
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: color
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',),
                      maxRadius: 32,
                      minRadius: 28,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: kWhite,width: 2)
                    ),
                    child: Center(child: Text(rank,style: TextStyle(
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
            child: Text(name,
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
              Text(points,style: TextStyle(
                  fontSize: 18,
              ),)
            ],
          )
        ],
      ),
    );
  }
}
