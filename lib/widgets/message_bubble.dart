import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class MessageBubble extends StatelessWidget {
  final String msg;
  final bool isMe;
  final String imgUrl;

  MessageBubble({this.msg, this.isMe,this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 4),
      child: Row(
        mainAxisAlignment:
        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          isMe ? Container() : Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
              maxRadius: 18,
              minRadius: 16,
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color: isMe ? kGreen : kWhite,
                  borderRadius: isMe
                      ? BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))
                      : BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0,2.0),
                        blurRadius: 2
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  msg,
                  style: TextStyle(fontSize: 15, color: isMe ? kWhite : kBlack),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
