import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:studygroups/widgets/earned_points_container.dart';
import 'package:studygroups/widgets/timeline_container.dart';

class EarnedPoints extends StatefulWidget {
  @override
  _EarnedPointsState createState() => _EarnedPointsState();
}

class _EarnedPointsState extends State<EarnedPoints> {
  String isPanelOpen = '▲';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          onPanelOpened: (){
            isPanelOpen = '▼';
            setState(() {
            });
          },
          onPanelClosed: (){
            isPanelOpen = '▲';
            setState(() {
            });
          },
          minHeight: 60,
          maxHeight: MediaQuery.of(context).size.height,
          color: Colors.transparent,
          panel: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff541488),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    'View Level information $isPanelOpen',
                    style: TextStyle(color: kWhite, fontSize: 16),
                  ),
                ),
              ),
             Expanded(
               child: Container(
                 color: kWhite,
                 child: ListView(
                   padding: EdgeInsets.only(top: 0,bottom: 20),
                   shrinkWrap: true,
                   children: [
                     TimeLineContainer(
                       level: '1',
                       points: '10',
                       isFirst: true,
                       isDone: true,
                     ),
                     TimeLineContainer(
                       level: '2',
                       points: '25',
                       isDone: true,
                     ),
                     TimeLineContainer(
                       level: '3',
                       points: '75',
                       isDone: true,
                     ),
                     TimeLineContainer(
                       level: '4',
                       points: '150',
                     ),
                     TimeLineContainer(
                       level: '5',
                       points: '300',
                     ),
                     TimeLineContainer(
                       level: '6',
                       points: '500',
                     ),
                     TimeLineContainer(
                       level: '7',
                       points: '700',
                     ),
                     TimeLineContainer(
                       level: '8',
                       points: '900',
                     ),TimeLineContainer(
                       level: '9',
                       points: '1100',
                     ),
                     TimeLineContainer(
                       level: '10',
                       points: '1500',
                       isLast: true,
                     ),
                   ],
                 ),
               ),
             )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'My Earned Points',
                    style: TextStyle(color: kGrey, fontSize: 18),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
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
                              style: TextStyle(
                                  fontSize: 26, color: Color(0xff541488)),
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
                    padding: const EdgeInsets.only(),
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
                    margin: EdgeInsets.only(left: 10),
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
                              style: TextStyle(
                                  fontSize: 26, color: Color(0xff541488)),
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
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
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Level',
                                style: TextStyle(
                                    color: Color(0xff541488), fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              '25',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(' points'),
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 28),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            minHeight: 12,
                            backgroundColor: Color(0xffddf2de),
                            valueColor:
                                new AlwaysStoppedAnimation<Color>(Colors.green),
                            value: 0.3,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xfff4ac3e)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Color(0xff541488),
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Level',
                                style: TextStyle(
                                    color: Color(0xff541488), fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              '75',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(' points'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How to reach level 3 ?'),
                    Text(
                      'View History',
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 8,bottom: 90),
                  children: [
                    EarnedPointsContainer(
                      points: '3',
                      text: 'Post or comment on th Doubtnet Forum',
                    ),
                    EarnedPointsContainer(
                      points: '4',
                      text: 'Watch a complete video from library',
                    ),
                    EarnedPointsContainer(
                      points: '5',
                      text: 'Ask question and watch it\'s video solutions',
                    ),
                    EarnedPointsContainer(
                      points: '10',
                      text: 'Watch a complete video from library',
                    ),
                    EarnedPointsContainer(
                      points: '20',
                      text: 'Ask Questions and watch it\'s video solutions',
                    ),
                    EarnedPointsContainer(
                      points: '25',
                      text: 'Post or comment on th Doubtnet Forum',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

