import 'package:flutter/material.dart';

import '../constants.dart';

class LearnSearchContainer extends StatelessWidget {
  const LearnSearchContainer({
    @required this.size,
    this.icon,
    this.name,
    this.color
  });
  final double size;
  final String name;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size * 0.28,
      height: size * 0.33,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon,size: 70,color: kWhite,),
          Text(name,style: TextStyle(
              color: kWhite
          ),)
        ],
      ),
    );
  }
}

