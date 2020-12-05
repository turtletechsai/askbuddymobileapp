import 'package:flutter/material.dart';
import 'package:studygroups/widgets/achievements_container.dart';
import 'package:studygroups/widgets/gaming_leaderboard_container.dart';
import 'package:studygroups/widgets/leaderboard_container.dart';
import 'package:studygroups/widgets/leaderboard_top3_container.dart';
import 'package:studygroups/widgets/leaderboard_top_container.dart';

import '../../constants.dart';

class TodayLeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: 210,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LeaderBoardTop3Container(
                    name: 'Shahrukh',
                    points: '24',
                    rank: '2',
                    color: kOrange,
                  ),
                ],
              ),
              Column(
                children: [
                  LeaderBoardTopContainer()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LeaderBoardTop3Container(
                    name: 'Vicky',
                    points: '23',
                    rank: '3',
                    color: kOrange,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 30,
        ),
        Column(
          children: [
            LeaderboardContainer(
              name: 'Shahid Kapoor',
              rank: '4',
              points: '3000',
            ),
            LeaderboardContainer(
              name: 'Ranveer Singh',
              rank: '5',
              points: '2934',
            ),
            LeaderboardContainer(
              name: 'Siddhant Chaturvedi',
              rank: '6',
              points: '2900',
            ),
            LeaderboardContainer(
              name: 'Nawazuddin Siddiqui',
              rank: '7',
              points: '2895',
            ),
            LeaderboardContainer(
              name: 'Kartik Aryan',
              rank: '8',
              points: '2870',
            ),
            LeaderboardContainer(
              name: 'Hritik Roshan',
              rank: '9',
              points: '2700',
            ),
            LeaderboardContainer(
              name: 'Pankaj Tripathi',
              rank: '10',
              points: '2680',
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xff541488),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text('200',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        color: kWhite
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                    ),
                    SizedBox(width: 10,),
                    Text('Farhan Akhtar',
                      style: TextStyle(
                          color: kWhite,
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
                    Text('150',style: TextStyle(
                      fontSize: 18,
                      color: kWhite
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}


