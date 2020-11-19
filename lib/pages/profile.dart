import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/custom_text_button.dart';
import 'package:studygroups/widgets/post_container.dart';
import 'package:studygroups/widgets/post_content_widgets.dart';
import 'package:studygroups/widgets/custom_back_button.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20),
      children: [
        SizedBox(
          height: 6,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Groups', style: kSecondTextStyle),
              CustomTextButton(
                list: [
                  Text(
                    'SAVED',
                    style: kPrimaryTextStyle.copyWith(),
                  )
                ],
                elevation: 3,
                height: 38,
                onPressed: (){
                  Navigator.pushNamed(context, '/ViewAllGroups');
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // CustomGridView(
        //   list: [
        //     GridViewContainer(
        //       groupName: 'Algebra Warriors',
        //       memberCount: 11,
        //       color: kOrange,
        //     ),
        //     GridViewContainer(
        //       groupName: 'Biology lovers',
        //       memberCount: 2,
        //       color: Colors.pinkAccent,
        //     ),
        //     GridViewContainer(
        //       groupName: 'Rocket people',
        //       memberCount: 35,
        //       color: Colors.lightBlueAccent,
        //     ),
        //     GridViewContainer(
        //       groupName: 'Raised by wolves',
        //       memberCount: 9,
        //       color: Colors.lightGreen,
        //     ),
        //     GridViewContainer(
        //       groupName: 'Chem solutions',
        //       memberCount: 7,
        //       color: Colors.redAccent,
        //     ),
        //     GridViewContainer(
        //       groupName: 'Solve easy',
        //       memberCount: 80,
        //       color: Colors.purple,
        //     ),
        //   ],
        // ),
        kSizedBox,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Recent Activity', style: kSecondTextStyle),
        ),
        SizedBox(
          height: 22,
        ),
        PostContainer(
          userName: 'Shrijeet Punewar',
          lastSeen: '1 hr ago',
          userImgUrl:
              'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
          list: [
            PostText(
              text:
                  'Hey i found this question paper of last year Might help you guys',
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              CustomTextButton(
                list: [
                  Text(
                    'VIEW FULL ACTIVITY',
                    style: kPrimaryTextStyle.copyWith(),
                  )
                ],
                elevation: 3,
                height: 38,
              ),
            ],
          ),
        ),
        kSizedBox,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('LeaderBoard', style: kSecondTextStyle),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          decoration: kBoxDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.location_on_rounded,
                                size: 30, color: kBlue),
                            SizedBox(width: 5),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('INDIA RANK',
                                      style: kSecondTextStyle.copyWith(
                                          color: kGrey, fontSize: 13)),
                                  Text('2354',
                                      style: kSecondTextStyle.copyWith(
                                          color: kBlue, fontSize: 22))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.bar_chart,
                                size: 30, color: kBlue),
                            SizedBox(width: 5),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('TOTAL POINTS',
                                      style: kSecondTextStyle.copyWith(
                                          color: kGrey, fontSize: 13)),
                                  Text('110',
                                      style: kSecondTextStyle.copyWith(
                                          color: kBlue, fontSize: 22))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.airplanemode_active_outlined, size: 30, color: kBlue),
                          SizedBox(width: 5),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('GLOBAL',
                                    style: kSecondTextStyle.copyWith(
                                        color: kGrey, fontSize: 13)),
                                Text('5246',
                                    style: kSecondTextStyle.copyWith(
                                        color: kBlue, fontSize: 22))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: CustomBackButton(
                    onPressed: (){

                    },
                    color: kBlue,
                    icon: Icons.arrow_forward),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('YOUR FRIENDS', style: kSecondTextStyle.copyWith(color: kGrey,fontSize: 14),
        ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                ),
                title: Text('Ramesh Sharma',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('213 points',
                    style: TextStyle(fontWeight: FontWeight.w300)),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                ),
                title: Text('Narayan Krishna',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('115 points',
                    style: TextStyle(fontWeight: FontWeight.w300)),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                ),
                title: Text('You',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('110 points',
                    style: TextStyle(fontWeight: FontWeight.w300)),
              ),
            ],
          ),
        ),
        SizedBox(height: 4,),
        Container(
          child: Row(
            children: [
              CustomTextButton(
                list: [
                  Text(
                    'VIEW ALL FRIENDS',
                    style: kPrimaryTextStyle.copyWith(),
                  )
                ],
                elevation: 3,
                height: 38,
              ),
            ],
          ),
        ),
        kSizedBox,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Quizzo Challenge', style: kSecondTextStyle),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: kBoxDecoration,
          child: ListTile(
            leading: Icon(Icons.local_fire_department,color: kMainThemeColor,size: 50,),
            title: Text('challenge a friend',style: kPrimaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),),
            subtitle: Text('Match your wits with other friends. Play Quizzo now!'),
            trailing: CustomBackButton(
              onPressed: (){

              },
              color: kWhite,
              icon: Icons.arrow_forward,
            buttonColor: kMainThemeColor,
            elevation: 0),
          ),
        ),
        kSizedBox,
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: kBoxDecoration.copyWith(color: kMainThemeColor),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: kWhite,
              child: Icon(Icons.group_add,color: kMainThemeColor,),
              radius: 24,
            ),
            title: Text('Create new group',style: kPrimaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              color: kWhite
            ),),
            subtitle: Text('Add your friends, strangers for your own cause',style: kSecondTextStyle.copyWith(
              color: kWhite,
              fontSize: 14,
              fontWeight: FontWeight.w300
            ),),
            trailing: CustomBackButton(
                onPressed: (){
                    Navigator.pushNamed(context, '/CreateGroup');
                },
                color: kMainThemeColor,
                icon: Icons.arrow_forward,
                buttonColor: kWhite,
                elevation: 0),
          ),
        ),
      ],
    );
  }
}
