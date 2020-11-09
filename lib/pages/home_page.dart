import 'package:flutter/material.dart';
import 'package:studygroups/Widgets/tab_bar_container.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/pages/explore.dart';
import 'package:studygroups/pages/profile.dart';
import 'feed.dart';
import 'package:studygroups/widgets/custom_back_button.dart';
import 'package:studygroups/widgets/custom_text_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int controller = 0;

  Widget screen (){
    if(controller == 0){
      return Feed();
    }else if(controller == 1){
      return Profile();
    }else {
      return Explore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(
                  onPressed: (){

                  },
                color: kMainThemeColor,
                icon: Icons.arrow_back,),
                CustomTextButton(list: [
                  Text(
                    'Invite Friends  ',
                    style: kPrimaryTextStyle,
                  ),
                  Icon(Icons.share, color: kMainThemeColor),
                ],
                elevation: 10,)
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Study Groups',
                style: kPrimaryTextStyle.copyWith(fontSize: 30,
                fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabBarContainer(
                  text: 'FEED',
                  isSelected: controller == 0 ? true : false,
                  onPressed: (){
                    controller = 0;
                    setState(() {

                    });
                  },
                ),
                TabBarContainer(
                  text: 'PROFILE',
                  isSelected: controller == 1 ? true : false,
                  onPressed: (){
                    controller = 1;
                    setState(() {

                    });
                  },
                ),
                TabBarContainer(
                  text: 'EXPLORE',
                  isSelected: controller == 2 ? true : false,
                  onPressed: (){
                    controller = 2;
                    setState(() {
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: screen(),
            )
          ],
        ),
      ),
    );
  }
}




