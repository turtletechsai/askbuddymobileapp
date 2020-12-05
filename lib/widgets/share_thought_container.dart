import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class ShareThoughtContainer extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final Function onTap;
  final Color color;
  ShareThoughtContainer({this.title,this.subtitle,this.imgUrl,this.onTap,this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
        decoration: kBoxDecoration,
        child: ListTile(
          leading: CircleAvatar(radius: 26,
            backgroundImage: NetworkImage(imgUrl),
          ),
          title: Text(title,
              style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w500
              )),
          subtitle: Text(subtitle,
              style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w300
              )),
        ),
      ),
    );
  }
}