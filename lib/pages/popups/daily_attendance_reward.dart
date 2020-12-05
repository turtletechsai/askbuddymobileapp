import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DailyAttendanceRewardPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Daily Attendance Reward',
          style: TextStyle(
              fontSize: 22,
              color: Color(0xff541388),
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Aaj Aapne jeeta 15 points',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff541388),
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Color(0xff79e87d)),
                    child: Container(
                      height: 120,
                      width: 120,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Color(0xff57bd5b)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 60,
                                color: kWhite,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Points',
                            style: TextStyle(color: kWhite,
                            fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 0,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xff57bd5b),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: kWhite,width: 2)
                      ),
                      child: Center(
                        child: Icon(Icons.done,color: kWhite,),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Day 1',
                  style: TextStyle(color: Color(0xff57bd5b), fontSize: 36,
                  fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Text('Kal fir aaye awr jeete',style: TextStyle(
                      color: Colors.grey[700]
                    ),),
                    Icon(Icons.flash_on_outlined,color: Colors.pinkAccent,size: 18,),
                    Text('20 point',style: TextStyle(
                        color: Colors.grey[700]
                    ),)
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  color: Color(0xffea532c),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Know More',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18
                  ),
                  ),
                  onPressed: (){

                  },
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}
