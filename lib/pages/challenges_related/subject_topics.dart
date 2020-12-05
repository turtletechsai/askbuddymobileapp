import 'package:flutter/material.dart';
import 'package:studygroups/widgets/challenges_subject_container.dart';

class SubjectTopics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text('Challenges',
            style: TextStyle(
              fontSize: 11
            ),),
            Text('Physics')
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff7280d9),
        elevation: 0,
      ),
      backgroundColor:  Color(0xff7280d9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChallengesSubjectContainer(
              text: 'All Chapters',
              icon: Icons.settings_outlined,
              color: Colors.orange,
              onTap: (){
                Navigator.pushNamed(context, '/TopicChallenges');
              },
            ),
            ChallengesSubjectContainer(
              text: 'Force and Pressure',
              icon: Icons.text_format_sharp,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Friction',
              icon: Icons.margin,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Sound',
              icon: Icons.engineering,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Chemical Effect of Electric Current',
              icon: Icons.mail_outline,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Some Natural Phenomenon',
              icon: Icons.format_align_left,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Light',
              icon: Icons.access_alarms_outlined,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Stars and the Solar System',
              icon: Icons.account_box_outlined,
              color: Colors.orange,
            ),
            ChallengesSubjectContainer(
              text: 'Laws of Motion',
              icon: Icons.account_box_outlined,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
