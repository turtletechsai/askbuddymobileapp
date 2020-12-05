import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class CreateNewChallengeDialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 18),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.watch,color: kGreen,),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      text: 'Create ',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: 'Easy Challenge',
                          style: TextStyle(
                            color: kGreen,
                            fontWeight: FontWeight.w500
                          )
                        )
                      ]
                    ),),
                    SizedBox(height: 5,),
                    Text('Test of 5 minutes with easy questions. '
                        'Recommended for quick revision.',
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey
                    ),)
                  ],
                ),
              ),
              Icon(Icons.chevron_right,color: kGrey,)
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.watch,color: Colors.redAccent,),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                        text: 'Create ',
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                              text: 'Hard Challenge',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w500
                              )
                          )
                        ]
                    ),),
                    SizedBox(height: 5,),
                    Text('Test of 15 minutes with hard questions',
                      style: TextStyle(
                          fontSize: 13,
                          color: kGrey
                      ),)
                  ],
                ),
              ),
              Icon(Icons.chevron_right,color: kGrey,)
            ],
          )
        ],
      ),
    );
  }
}
