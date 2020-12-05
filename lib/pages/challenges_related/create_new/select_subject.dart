import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/challenges_subject_container.dart';

class SelectSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff292c35),
        leading: IconButton(
          icon: Icon(Icons.close,color: kWhite,),
          onPressed: (){},
        ),
        title: Text('Select Subject',
        style: TextStyle(
          color: kWhite
        ),),
      ),
      backgroundColor: Color(0xffe9e9eb),
      body: ListView(
        children: [
          ChallengesSubjectContainer(
            text: 'Physics',
            icon: Icons.watch,
            color: Colors.orange,
            onTap: (){
              Navigator.pushNamed(context, '/SelectSubjectChapter');
            },
          ),
          ChallengesSubjectContainer(
            text: 'Chemistry',
            icon: Icons.settings_outlined,
            color: Colors.redAccent,
          ),
          ChallengesSubjectContainer(
            text: 'Maths',
            icon: Icons.text_format_sharp,
            color: Colors.blue,
          ),
          ChallengesSubjectContainer(
            text: 'Biology',
            icon: Icons.margin,
            color: Colors.green,
          ),
          ChallengesSubjectContainer(
            text: 'English',
            icon: Icons.engineering,
            color: Colors.lime,
          ),
          ChallengesSubjectContainer(
            text: 'History',
            icon: Icons.mail_outline,
            color: Colors.purpleAccent,
          ),
          ChallengesSubjectContainer(
            text: 'Civics',
            icon: Icons.format_align_left,
            color: Colors.tealAccent,
          ),
          ChallengesSubjectContainer(
            text: 'Geology',
            icon: Icons.access_alarms_outlined,
            color: Colors.purple,
          ),
          ChallengesSubjectContainer(
            text: 'Logical Reasoning',
            icon: Icons.account_box_outlined,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
