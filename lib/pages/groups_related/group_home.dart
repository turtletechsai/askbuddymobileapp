import 'package:flutter/material.dart';
import 'package:studygroups/widgets/custom_back_button.dart';
import 'package:studygroups/widgets/custom_filter_box.dart';
import 'package:studygroups/widgets/post_container.dart';
import 'package:studygroups/widgets/post_content_widgets.dart';
import 'package:studygroups/widgets/share_thought_container.dart';

import '../../constants.dart';

class GroupHome extends StatefulWidget {
  final String groupName;
  GroupHome({@required this.groupName});

  @override
  _GroupHomeState createState() => _GroupHomeState();
}

class _GroupHomeState extends State<GroupHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(
                  onPressed: (){

                  },
                  color: kOrange,
                  icon: Icons.arrow_back,),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.groupName,
                style: kPrimaryTextStyle.copyWith(fontSize: 26,
                    fontWeight: FontWeight.w500,
                color: kOrange),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kOrange
                  ),
                  child: Text('JOINED',style: TextStyle(
                    color: kWhite,
                    fontSize: 16
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: kOrange,width: 1.5)
                  ),
                  child: Center(child: Icon(Icons.notifications)),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 20),
              decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.search,color: kGrey,),
                  SizedBox(width: 5,),
                  Expanded(
                    child: TextField(
                      cursorColor: kMainThemeColor,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide.none
                        ),
                        hintText: 'Search groups',
                        hintStyle: kPrimaryTextStyle.copyWith(color: kGreyLite),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ShareThoughtContainer(
              title: 'Share a thought',
              subtitle:
              'Share study tips, articles, doubts or anything study related',
              imgUrl:
              'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
              onTap: () {
                Navigator.pushNamed(context, '/PostNewThought');
              },
              color: kOrange,
            ),
            SizedBox(height: 10,),
            // Container(
            //     child: SimpleAccountMenu(
            //       iconColor: Colors.white,
            //       onChange: (index) {},
            //     )
            // ),
            PostContainer(
              id: 12,
              userName: 'Yoshihide Suga',
              lastSeen: '10 PM',
              list: [
                PostText(
                  text:'Hello everyone how are you?',
                ),
              ],
              userImgUrl:
              'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
              likes: '29',
              comments: '46',
              isBookmarked: true,
            ),
            PostContainer(
              id: 12,
              userName: 'Joe Biden',
              lastSeen: '10 PM',
              list: [
                PostText(
                  text:'Hello everyone how are you?',
                ),
              ],
              userImgUrl:
              'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
              likes: '29',
              comments: '46',
              isBookmarked: true,
            ),
            PostContainer(
              id: 12,
              userName: 'Emmanuel Macron',
              lastSeen: '10 PM',
              list: [
                PostText(
                  text:'Hello everyone how are you?',
                ),
              ],
              userImgUrl:
              'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
              likes: '29',
              comments: '46',
              isBookmarked: true,
            )
          ],
        ),
      ),
    );
  }
}
