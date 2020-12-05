import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/pages/gaming_related/todays_leaderboard.dart';
import 'package:studygroups/pages/popups/next_level_reached.dart';
import 'package:studygroups/pages/popups/points_earned.dart';

class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: kBlack,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text('LeaderBoard',
          style: TextStyle(
            color: Colors.grey[800]
          ),),
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Today\'s'),),
              Tab(child: Text('Over All'),),
            ],
            labelColor: kBlack,
            unselectedLabelColor: kGrey,
            indicatorColor: kDarkOrange,
          ),
        ),
        body: TabBarView(
          children: [
            TodayLeaderBoard(),
            GestureDetector(child: PointsEarnedPopup(),
            onTap: (){
              showModalBottomSheet(
                  context: context, builder: (context){
                return NextLevelReached();
              },
              backgroundColor: Colors.transparent);
            },),
          ],
        ),
      ),
    );
  }
}
