import 'package:flutter/material.dart';

class SelectClassContainer extends StatelessWidget {
  const SelectClassContainer({
    @required this.size,
    @required this.className,
    @required this.onTap,
    @required this.bgColor
  });
  final double size;
  final String className;
  final Function onTap;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size * 0.24,
        height: size * 0.24,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(8),
            color: bgColor
        ),
        child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(className,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    color: bgColor == null ? Colors.black : Colors.white
                  ),),
                Text('th',
                  style: TextStyle(
                      color: bgColor == null ? Colors.grey[500] : Colors.white
                  ),)
              ],
            )),
      ),
    );
  }
}
