import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostContainer extends StatelessWidget {
  final String userName,userImgUrl,lastSeen;
  final List<Widget> list;
  PostContainer({this.lastSeen,this.userImgUrl,this.userName,@required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: kBoxDecoration,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  userImgUrl),
            ),
            title: Text(userName,
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text(lastSeen,
                style: TextStyle(fontWeight: FontWeight.w300)),
            trailing:
            Icon(Icons.bookmark_border, size: 30, color: kBlack),
          ),
          Container(
            child: Column(
              children: list,
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.chevronUp,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '234 Upvotes',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.mode_comment,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text('234 Upvotes',
                          style: TextStyle(fontWeight: FontWeight.w400))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
