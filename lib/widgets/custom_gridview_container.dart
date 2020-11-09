import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class GridViewContainer extends StatelessWidget {
  final Color color;
  final String groupName;
  final int memberCount;

  GridViewContainer({this.color, this.groupName, this.memberCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
            child: Center(child: Text(memberCount.toString(),style: kPrimaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color
            ),)),
          ),
          Center(
            child: Text(
              groupName,
              style: kPrimaryTextStyle.copyWith(
                  color: kWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
