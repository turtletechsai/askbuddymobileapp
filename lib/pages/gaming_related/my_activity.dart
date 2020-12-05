import 'package:flutter/material.dart';
import 'package:studygroups/widgets/achievements_container.dart';

class MyActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AchievementsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Doubt Asked'),
                SizedBox(
                  height: 10,
                ),
                Text('200',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff541488)
                ),)
              ],
            ),
          ),
          AchievementsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Video Watched'),
                SizedBox(
                  height: 10,
                ),
                Text('5000',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff541488)
                  ),)
              ],
            ),
          ),
          AchievementsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mock Test Given'),
                SizedBox(
                  height: 10,
                ),
                Text('10',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff541488)
                  ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
