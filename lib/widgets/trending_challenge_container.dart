import 'package:flutter/material.dart';

import '../constants.dart';

class TrendingChallengeContainer extends StatelessWidget {
  final String imgUrl,challengeName,topScorer,noOfParticipants;
  TrendingChallengeContainer({this.imgUrl,this.challengeName,this.noOfParticipants,this.topScorer});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width-60,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0,0),
              blurRadius: 5
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4,right: 8),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                  radius: 22,),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Physics',
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.w500
                      ),),
                    SizedBox(height: 4,),
                    Text('Centre of Mass, Momentum and Collission Of earth',
                      style: TextStyle(
                          fontSize: 18
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 4,),
                    Text('Top Scorer:jagrati Malhotra',
                      style: TextStyle(
                          color: kGrey
                      ),)
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(text:
                    TextSpan(
                        text: '68',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: kBlack
                        ),
                        children: [
                          TextSpan(
                              text: '/100',
                              style: TextStyle(
                                  color: kGrey,
                                  fontWeight: FontWeight.w400
                              )
                          )
                        ]
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Expanded(
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                              radius: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                              radius: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                              radius: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Text('Rohan, Priya & 70 Participated',
                          style: TextStyle(
                              color: kGrey
                          ),
                          overflow: TextOverflow.ellipsis,),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('#Easy',
                  style: TextStyle(
                      color: kGrey
                  ),),
              )
            ],
          )
        ],
      ),
    );
  }
}
