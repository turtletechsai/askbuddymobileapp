import 'package:flutter/material.dart';
import 'package:studygroups/widgets/custom_gridview_container.dart';

class CustomGridView extends StatelessWidget {
  final List<Widget> list;
  CustomGridView({this.list});


  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

