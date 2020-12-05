import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/challenge_container.dart';

class TopicChallenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Challenges'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){},
        ),
        backgroundColor: Color(0xff7280d9),
        elevation: 0,
      ),
        backgroundColor: Color(0xff7280d9),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text('PHYSICS',
                  style: TextStyle(
                    color: Colors.yellow,
                    wordSpacing: 1,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 40),
                    child: Text('Centre of Mass, Momentum and Collision',
                      style: TextStyle(
                          color: kWhite,
                          wordSpacing: 1,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    textAlign: TextAlign.center,),
                  ),
                ),
                SizedBox(height: 10,),
                ChallengeContainer(),
                ChallengeContainer(),
                ChallengeContainer(),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/SelectSubject');
            },
            child: Container(
              height: 60,
              color: Color(0xff60b91f),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('START A NEW CHALLENGE',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 16
                  ),),
                  Icon(Icons.chevron_right,color: kWhite,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
