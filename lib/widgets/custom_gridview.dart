import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class CustomGridView extends StatelessWidget {
  final List<Widget> list;
  final String gridTitle;
  CustomGridView({this.list,this.gridTitle});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 25, 30, 20),
          child: Text(gridTitle,style: kPrimaryTextStyle.copyWith(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500
          ),),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 225,
          child: GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            children: list,
          ),
        ),
      ],
    );
  }
}

