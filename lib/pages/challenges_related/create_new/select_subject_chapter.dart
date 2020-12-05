import 'package:flutter/material.dart';
import 'package:studygroups/widgets/challenges_subject_container.dart';
import 'package:studygroups/widgets/create_new_challenge_dialogue.dart';

import '../../../constants.dart';

class SelectSubjectChapter extends StatelessWidget {
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
        title: Column(
          children: [
            Text('Physics',
            style: TextStyle(
              fontSize: 12,
              color: Colors.yellow,
              fontWeight: FontWeight.w600
            ),),
            Text('Select Chapter',
              style: TextStyle(
                  color: kWhite
              ),),
          ],
        ),
      ),
      backgroundColor: Color(0xffe9e9eb),
      body: ListView(
        children: [
          ChallengesSubjectContainer(
            text: 'Force and Pressure',
            icon: Icons.text_format_sharp,
            color: Colors.orange,
            onTap: (){
              showDialog(context: context,
              child: AlertDialog(
                contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                insetPadding: EdgeInsets.symmetric(horizontal: 28,vertical: 28),
                backgroundColor: Color(0xfff8f8f8),
                content: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Physics',
                      style: TextStyle(
                        color: Color(0xffeeda9b),
                        fontSize: 12,
                        fontWeight: FontWeight.w900
                      ),),
                      Text('Force and Pressure',
                      style: TextStyle(
                        color: kGrey
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      CreateNewChallengeDialogue()
                    ],
                  ),
                ),
              ),);
            },
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
    );
  }
}
