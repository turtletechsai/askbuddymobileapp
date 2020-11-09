import 'package:flutter/material.dart';

class PostPhoto extends StatelessWidget {
final String url;
PostPhoto({this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        child: Image.network(
            url),
      ),
    );
  }
}

class PostText extends StatelessWidget {
final String text;
PostText({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }
}