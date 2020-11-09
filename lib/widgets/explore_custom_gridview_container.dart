import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class ExploreGridViewContainer extends StatelessWidget {
  final Color color;
  final String lowerTitle;
  final String upperTitle1,upperTitle2;
  final double width;
  final EdgeInsetsGeometry margin;

  ExploreGridViewContainer({this.color, this.lowerTitle, this.upperTitle1,this.upperTitle2,this.width,this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$upperTitle1 $upperTitle2',
            style: kPrimaryTextStyle.copyWith(
                color: kWhite,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Text(
            lowerTitle,
            style: kPrimaryTextStyle.copyWith(
                color: kWhite,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
