import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/achievements_container.dart';
import 'package:studygroups/widgets/gaming_leaderboard_container.dart';
import 'package:studygroups/widgets/gaming_points_container.dart';

class MyAchievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/EarnedPoints');
            },
            child: AchievementsContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Earned Points',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Point Jeetein DN cash paaye',
                          style: TextStyle(fontSize: 12, color: kGrey),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10, top: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.flash_on_outlined,
                                        color: Colors.pinkAccent,
                                      ),
                                      Text(
                                        '50',
                                        style: TextStyle(fontSize: 26,
                                        color: Color(0xff541488)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Today\'s Point',
                                    style: TextStyle(color: kGrey),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: SizedBox(
                                height: 40,
                                width: 2,
                                child: Divider(
                                  height: 0,
                                  thickness: 40,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.flash_on_outlined,
                                        color: Colors.pinkAccent,
                                      ),
                                      Text(
                                        '58',
                                        style: TextStyle(fontSize: 26,
                                        color: Color(0xff541488)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Total Points',
                                    style: TextStyle(color: kGrey),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xfff4ac3e)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2',
                            style: TextStyle(
                                color: Color(0xff541488),
                                fontSize: 32,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Level',
                            style: TextStyle(
                                color: Color(0xff541488), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          AchievementsContainer(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Wallet',
                      style: TextStyle(fontSize: 16),
                    ),
                    Icon(Icons.card_giftcard_outlined,color: kGreen,)
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10 points = 5 DN cash',
                    style: TextStyle(
                      fontSize: 12,
                      color: kGrey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.money_outlined,color: kGreen,),
                          Text('150',
                            style: TextStyle(
                                fontSize: 26,
                                color: Color(0xff541488)
                            ),),
                          Text(' DN Cash',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff541488)
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kDarkOrange,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                      child: Text('Shop with DN Cash',
                      style: TextStyle(
                        color: kWhite
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
          AchievementsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Badges',
                style: TextStyle(
                  fontSize: 16
                ),),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Badges Jeetein, Doston ko dikhaye',
                  style: TextStyle(
                    fontSize: 12,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 120,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: kDarkOrange),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://image.freepik.com/free-photo/portrait-charming-young-man-standing-against-white-background_23-2148213403.jpg'),
                                  minRadius: 30,
                                  maxRadius: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 0,
                              right: 0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'SUPER STAR',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xfffdca46),
                                      fontWeight: FontWeight.w900,shadows: [
                                    Shadow(
                                        color: Color(0xff541488),
                                        offset: Offset(0.0,0.0),
                                        blurRadius: 10
                                    )
                                  ]
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: kDarkOrange),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://image.freepik.com/free-photo/portrait-charming-young-man-standing-against-white-background_23-2148213403.jpg'),
                                  minRadius: 30,
                                  maxRadius: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 0,
                              right: 0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'RISING STAR',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xfffdca46),
                                      fontWeight: FontWeight.w900,shadows: [
                                    Shadow(
                                        color: Color(0xff541488),
                                        offset: Offset(0.0,0.0),
                                        blurRadius: 10
                                    )
                                  ]
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: kDarkOrange),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://image.freepik.com/free-photo/portrait-charming-young-man-standing-against-white-background_23-2148213403.jpg'),
                                  minRadius: 30,
                                  maxRadius: 40,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 0,
                              right: 0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'RISING STAR',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xfffdca46),
                                      fontWeight: FontWeight.w900,shadows: [
                                    Shadow(
                                        color: Color(0xff541488),
                                        offset: Offset(0.0,0.0),
                                        blurRadius: 10
                                    )
                                  ]
                                  ),
                                ),
                              ),
                            ),
                            // BackdropFilter(
                            //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            // child: Icon(Icons.lock),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          AchievementsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Text('Daily LeaderBoard',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/LeaderBoard');
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Aaj ke Toppers',
                  style: TextStyle(
                    fontSize: 12,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GamingLeaderboardContainer(),
                      GamingLeaderboardContainer(),
                      GamingLeaderboardContainer()
                    ],
                  ),
                )
              ],
            ),
          ),
          AchievementsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Daily Attendance',
                  style: TextStyle(
                      fontSize: 16
                  ),),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Kal Phir aaye awr points paayein',
                  style: TextStyle(
                    fontSize: 12,
                    color: kGrey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GamingPointsContainer(points: '15',day: '1',),
                      GamingPointsContainer(points: '20',day: '2',),
                      GamingPointsContainer(points: '25',day: '3',),
                      GamingPointsContainer(points: '30',day: '4',),
                      GamingPointsContainer(points: '35',day: '5',)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}




