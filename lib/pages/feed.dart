import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/Widgets/share_thought_container.dart';
import 'package:studygroups/Widgets/post_container.dart';
import 'package:studygroups/widgets/custom_filter_box.dart';
import 'package:studygroups/widgets/post_content_widgets.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20),
      children: [
        ShareThoughtContainer(
          title: 'Share a thought',
          subtitle:
              'Share study tips, articles, doubts or anything study related',
          imgUrl:
              'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
          onTap: (){
            Navigator.pushNamed(context, '/PostNewThought');
          },
        ),
        // FilterSelection(),
        Container(
            child: SimpleAccountMenu(
              strings: [
                'Recent Activity',
                'Old Posts',
                'Most Popular'
              ],
              iconColor: Colors.white,
              onChange: (index) {

              },
            )),
        PostContainer(
          userName: 'Shrijeet Punewar',
          lastSeen: '1 hr ago',
          userImgUrl: 'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
          list: [
            PostText(text: 'Hey i found this question paper of last year Might help you guys',),
            PostPhoto(url: 'https://c.files.bbci.co.uk/14824/production/_95640048_a2c8259e-a5f2-45fa-bcaa-16111d660c7e.jpg',)
          ],
        )
      ],
    );
  }
}



