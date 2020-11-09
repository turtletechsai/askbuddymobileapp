// import 'package:flutter/material.dart';
// import 'package:studygroups/constants.dart';
//
// class FilterSelection extends StatefulWidget {
//   @override
//   _FilterSelectionState createState() => _FilterSelectionState();
// }
//
// class _FilterSelectionState extends State<FilterSelection> {
//   String selectedFilter = 'Recent Activity';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       margin: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width-190, 10),
//       decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(30)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(selectedFilter),
//           PopupMenuButton(
//             itemBuilder: (BuildContext context) => <PopupMenuEntry>[
//               const PopupMenuItem(
//                 child: Text('Recent Activity'),
//                 value: 'Recent Activity',
//               ),
//               const PopupMenuItem(
//                 child: Text('Old Posts'),
//                 value: 'Old Posts',
//               ),
//               const PopupMenuItem(
//                 child: Text('Most Popular'),
//                 value: 'Most Popular',
//               )
//             ],
//             icon: Icon(Icons.keyboard_arrow_down),
//             onSelected: (value){
//               selectedFilter = value;
//               setState(() {
//
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }