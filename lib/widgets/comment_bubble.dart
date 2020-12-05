import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class CommentBubbleText extends StatelessWidget {
  final String msg;
  final String imgUrl;

  CommentBubbleText({this.msg,this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
                  color: kGreen,
                  borderRadius:BorderRadius.circular(30),
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
                  style: TextStyle(fontSize: 15, color: kWhite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentBubbleImage extends StatelessWidget {
  final String msg;
  final String imgUrl,photoUrl;

  CommentBubbleImage({this.msg,this.imgUrl,this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
                  color: kGreen,
                  borderRadius:BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0,2.0),
                        blurRadius: 2
                    )
                  ]
              ),
              child: Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.network(photoUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
