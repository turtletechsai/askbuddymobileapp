import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class ViewAllGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GROUPS',style: TextStyle(
          color: kBlack
        ),),
        backgroundColor: kWhite,
        leading: null,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 30),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                color: kLitePurple,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 30),
                  child: Text('Workout Squad',style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: kWhite
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kWhite
                    ),
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                                maxRadius: 18,
                                minRadius: 14,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: Container(
                                  child: Text('Who\'s is going to the gym tonight? 🙂',
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.grey[500]
                                    ),),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 20,left: 15,right: 10,bottom: 10),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                                      maxRadius: 9,
                                      minRadius: 8
                                    ),
                                    SizedBox(width: 3),
                                    CircleAvatar(
                                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                                        maxRadius: 9,
                                        minRadius: 8
                                    ),
                                    SizedBox(width: 3),
                                    CircleAvatar(
                                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                                        maxRadius: 9,
                                        minRadius: 8
                                    ),
                                    SizedBox(width: 3),
                                    CircleAvatar(
                                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                                        maxRadius: 9,
                                        minRadius: 8
                                    ),
                                    SizedBox(width: 3),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10,top: 10),
                                padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Text('5:27 PM',style: TextStyle(
                                  color: Colors.grey
                                ),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: kLiteRed,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text('1',style: TextStyle(
                        fontSize: 25,
                        color: kWhite
                      ),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
