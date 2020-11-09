import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studygroups/models/response.dart';

class PostContainer extends StatelessWidget {
  final String userName,userImgUrl,lastSeen,likes,comments;
  final List<Widget> list;
  final bool isBookmarked;
  PostContainer({this.lastSeen,this.userImgUrl,this.userName,@required this.list,this.likes,this.comments,this.isBookmarked = false});

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              Icon(isBookmarked ? Icons.bookmark_outlined : Icons.bookmark_border, size: 30, color: kBlack),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          FontAwesomeIcons.thumbsUp,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '$likes likes',
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
                        Text('$comments comments',
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
