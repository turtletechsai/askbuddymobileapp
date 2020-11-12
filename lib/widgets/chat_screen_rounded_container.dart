import 'package:flutter/material.dart';


class ChatScreenRoundedContainer extends StatelessWidget {
  final String text;
  final Color bgColor,iconColor;
  final IconData icon;
  final Function onPressed;
  ChatScreenRoundedContainer({this.bgColor,this.text,this.iconColor,this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bgColor),
            child: IconButton(
              icon: Icon(
                icon,
                color: iconColor,
                size: 26,
              ),
              onPressed: onPressed,
            ),
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      ),
    );
  }
}