import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/challenges_subject_container.dart';
import 'package:studygroups/widgets/trending_challenge_container.dart';

class ChallengeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7280d9),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kWhite,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                color: kWhite,
              ),
              onPressed: () {})
        ],
        elevation: 0,
        backgroundColor: Color(0xff7280d9),
      ),
      body: ListView(
        children: [
          Icon(
            Icons.settings_outlined,
            color: kWhite,
            size: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            child: Text(
              'Challenges',
              style: TextStyle(fontSize: 26, color: kWhite),
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 6),
            child: Text(
              'Take a 15-min challenge and instantly know how you fare! invite friends to beat yourr score',
              style: TextStyle(color: kWhite),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'TRENDING',
              style: TextStyle(color: kWhite, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 180,
            child: ListView(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              children: [
                TrendingChallengeContainer(),
                TrendingChallengeContainer(),
                TrendingChallengeContainer(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            height: 80,
            decoration: BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide.none,
                horizontal: BorderSide(color: kWhite),
              ),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Color(0xff9ca6e4),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.watch_later_outlined,
                      color: kWhite,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VIEW ATTEMPTED',
                        style: TextStyle(
                            color: kWhite, fontWeight: FontWeight.w700),
                      ),
                      Flexible(
                        child: Text(
                          '1 Physics, 3 Chemistry, 1 Maths',
                          style: TextStyle(color: kWhite),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.chevron_right,
                    color: kWhite,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'SUBJECT-WISE',
              style: TextStyle(color: kWhite, fontWeight: FontWeight.w700),
            ),
          ),
          ChallengesSubjectContainer(
            text: 'Physics',
            icon: Icons.watch,
            color: Colors.orange,
            onTap: (){
              Navigator.pushNamed(context, '/SubjectTopics');
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
