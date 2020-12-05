import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'file:///C:/Users/Administrator/AndroidStudioProjects/studygroups/lib/pages/gaming_related/my_achievements.dart';
import 'package:studygroups/pages/gaming_related/my_activity.dart';

class ProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              width: width,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: TabBar(
                      tabs: [
                        Tab(
                          text: 'MY ACHIEVEMENTS',
                        ),
                        Tab(
                          text: 'MY ACTIVITY',
                        ),
                      ],
                      labelStyle: TextStyle(fontSize: 15),
                      labelColor: kBlack,
                      indicatorColor: kOrange,
                    ),
                  ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.edit_outlined,
                              color: Colors.grey[800],
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.settings_outlined,
                                color: Colors.grey[800]),
                            onPressed: () {})
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: height * 0.2,
                      child: Column(
                        children: [
                          Container(
                            width: width * 0.5,
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
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'RISING STAR',
                                      style: TextStyle(
                                        fontSize: 20,
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
                          SizedBox(height: 10,),
                          Text(
                            'Shahrukh Khan',
                            style: TextStyle(fontSize: 20,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MyAchievements(),
                  MyActivity(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
