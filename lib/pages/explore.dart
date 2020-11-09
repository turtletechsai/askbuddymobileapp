import 'package:flutter/material.dart';
import 'package:studygroups/widgets/custom_gridview.dart';
import 'package:studygroups/widgets/custom_text_button.dart';
import 'package:studygroups/widgets/subjectContainer.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/explore_custom_gridview_container.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  var selectedSub = 'Physics';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SubjectContainer(icon: Icons.add,
                containerColor: selectedSub == 'Maths' ? Colors.purple[100] : Colors.transparent,
                iconBgColor: Colors.purple,
                text: 'All',
                onTap: (){
                  selectedSub = 'Maths';
                  setState(() {
                  });
                },),
              SubjectContainer(icon: Icons.local_fire_department,
                containerColor: selectedSub == 'Physics' ? Colors.pink[100] : Colors.transparent,
                iconBgColor: Colors.pink,
                text: 'Physics',
                onTap: (){
                  selectedSub = 'Physics';
                  setState(() {
                  });
                },),
              SubjectContainer(icon: Icons.bookmark_border,
                containerColor: selectedSub == 'Chemistry' ? Colors.blue[100] : Colors.transparent,
                iconBgColor: Colors.blue,
                text: 'Chemistry',
                onTap: (){
                  selectedSub = 'Chemistry';
                  setState(() {
                  });
                },),
              SubjectContainer(icon: Icons.share,
                containerColor: selectedSub == 'Biology' ? Colors.green[100] : Colors.transparent,
                iconBgColor: Colors.green,
                text: 'Biology',
                onTap: (){
                  selectedSub = 'Biology';
                  setState(() {
                  });
                },),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Icon(Icons.search,color: kGrey,),
              SizedBox(width: 5,),
              Expanded(
                child: TextField(
                  cursorColor: kMainThemeColor,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    hintText: 'Search groups',
                    hintStyle: kPrimaryTextStyle.copyWith(color: kGreyLite),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Text('Picked For You',style: kPrimaryTextStyle.copyWith(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500
          ),),
        ),
        CustomGridView(
          list: [
            ExploreGridViewContainer(
              lowerTitle: 'Algebra Warriors',
              color: kOrange,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),ExploreGridViewContainer(
              lowerTitle: 'History Heroes',
              color: Colors.pinkAccent,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Almighty All',
              color: Colors.blueAccent,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'DC Fans',
              color: Colors.green,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Avengers Assemble',
              color: Colors.redAccent,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Ok Newbies',
              color: Colors.purple,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 25, 30, 20),
          child: Text('Popular Groups',style: kPrimaryTextStyle.copyWith(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500
          ),),
        ),
        CustomGridView(
          list: [
            ExploreGridViewContainer(
              lowerTitle: 'DC Fans',
              color: Colors.green,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Avengers Assemble',
              color: Colors.redAccent,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Ok Newbies',
              color: Colors.purple,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Algebra Warriors',
              color: kOrange,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),ExploreGridViewContainer(
              lowerTitle: 'History Heroes',
              color: Colors.pinkAccent,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
            ExploreGridViewContainer(
              lowerTitle: 'Almighty All',
              color: Colors.blueAccent,
              upperTitle1: '103',
              upperTitle2: 'members',
            ),
          ],
        ),
        kSizedBox,
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Text('Global Leaderboard',style: kPrimaryTextStyle.copyWith(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500
          ),),
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
                trailing: Text('#1',style: kPrimaryTextStyle.copyWith(color: kGrey),),
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
                  trailing: Text('#2',style: kPrimaryTextStyle.copyWith(color: kGrey),)
              ),
              ListTile(
                  leading: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                  ),
                  title: Text('Punam Ahuja',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Text('100 points',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  trailing: Text('#3',style: kPrimaryTextStyle.copyWith(color: kGrey),)
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
              ),
              title: Text('You',
                  style: kPrimaryTextStyle.copyWith(fontWeight: FontWeight.w500)),
              subtitle: Text('20 points',
                  style: kPrimaryTextStyle.copyWith(
                      fontWeight: FontWeight.w300
                  )),
              trailing: Text('#2354',style: kPrimaryTextStyle.copyWith(color: kGrey),)
          ),
        ),
        SizedBox(height: 4,),
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Row(
            children: [
              CustomTextButton(
                list: [
                  Text(
                    'VIEW ALL',
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
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Text('Ongoing Open Challenges',style: kPrimaryTextStyle.copyWith(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500
          ),),
        ),
        Container(
          height: 112,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 11),
            scrollDirection: Axis.horizontal,
            children: [
              ExploreGridViewContainer(
                lowerTitle: 'Almighty All',
                color: Colors.orangeAccent,
                upperTitle1: '173',
                upperTitle2: 'Challenges',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              ExploreGridViewContainer(
                lowerTitle: 'Challenge ERA',
                color: Colors.redAccent,
                upperTitle1: '578',
                upperTitle2: 'Challenges',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              ExploreGridViewContainer(
                lowerTitle: 'Challenges Today',
                color: Colors.pinkAccent,
                upperTitle1: '986',
                upperTitle2: 'Challenges',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              ExploreGridViewContainer(
                lowerTitle: 'Almighty All',
                color: Colors.blueAccent,
                upperTitle1: '545',
                upperTitle2: 'Challenges',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
            ],
          ),
        ),
        kSizedBox,
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Text('Discussion Rooms',style: kPrimaryTextStyle.copyWith(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500
          ),),
        ),
        Container(
          height: 112,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 11),
            scrollDirection: Axis.horizontal,
            children: [
              ExploreGridViewContainer(
                lowerTitle: 'Almighty All',
                color: Colors.blueAccent,
                upperTitle1: '62',
                upperTitle2: 'Online',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              ExploreGridViewContainer(
                lowerTitle: 'Challenge ERA',
                color: Colors.pinkAccent,
                upperTitle1: '825',
                upperTitle2: 'Online',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              ExploreGridViewContainer(
                lowerTitle: 'Challenges Today',
                color: Colors.greenAccent,
                upperTitle1: '405',
                upperTitle2: 'Online',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              ExploreGridViewContainer(
                lowerTitle: 'Almighty All',
                color: Colors.pinkAccent,
                upperTitle1: '902',
                upperTitle2: 'Online',
                width: 165,
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
            ],
          ),
        ),
        kSizedBox,
      ],
    );
  }
}
