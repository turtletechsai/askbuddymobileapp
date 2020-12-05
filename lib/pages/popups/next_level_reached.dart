import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class NextLevelReached extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff06f41),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xfff4ac3e)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '2',
                  style: TextStyle(
                      color: Color(0xff541488),
                      fontSize: 42,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'Level',
                  style: TextStyle(
                      color: Color(0xff541488), fontSize: 20),
                )
              ],
            ),
          ),
          Text('Well Done!',
          style: TextStyle(
            color: kWhite,
            fontSize: 32
          ),),
          SizedBox(height: 10,),
          Text('You Reached Level 2',
          style: TextStyle(
            color: kWhite,
            fontSize: 18
          ),),
          SizedBox(height: 20,),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width - 130,
            child: RaisedButton(
              onPressed: (){},
              color: kWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
              ),
              child: Text('Share With Friends',
              style: TextStyle(
                color: Color(0xfff06f41),
                fontSize: 18
              ),),
            ),
          )
        ],
      ),
    );
  }
}
