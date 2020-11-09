import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/widgets/custom_back_button.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/subjectContainer.dart';
import 'package:studygroups/widgets/custom_text_button.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  var selectedSub = 'Physics';
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              CustomBackButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                color: kMainThemeColor,
                icon: Icons.arrow_back,),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'New study group',
                  style: kPrimaryTextStyle.copyWith(fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Name of your Group',style: kPrimaryTextStyle.copyWith(
                  fontSize: 16,
                  color: kBlack,
                  fontWeight: FontWeight.w500
                ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  cursorColor: kMainThemeColor,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: 'eg: The Guardians of Galaxy',
                    hintStyle: kPrimaryTextStyle.copyWith(color: kGreyLite),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Pick your subject',style: kPrimaryTextStyle.copyWith(
                    fontSize: 16,
                    color: kBlack,
                    fontWeight: FontWeight.w500
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectContainer(icon: Icons.add,
                    containerColor: selectedSub == 'Maths' ? Colors.orange[100] : Colors.transparent,
                    iconBgColor: Colors.orange,
                    text: 'Maths',
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
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Describe your group',style: kPrimaryTextStyle.copyWith(
                    fontSize: 16,
                    color: kBlack,
                    fontWeight: FontWeight.w500
                ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  cursorColor: kMainThemeColor,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide.none
                      ),
                      hintText: 'Tell us what is it about',
                      hintStyle: kPrimaryTextStyle.copyWith(color: kGreyLite)
                  ),
                  maxLines: 4,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Privacy',style: kPrimaryTextStyle.copyWith(
                              fontSize: 16,
                              color: kBlack,
                              fontWeight: FontWeight.w500
                          ),),
                          Text('Public',
                            style: kPrimaryTextStyle.copyWith(fontSize: 28,
                                fontWeight: FontWeight.w500)
                          )
                        ],
                      ),
                    ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (value){
                        switchValue = value;
                        setState(() {

                        });
                      },
                      activeColor: kMainThemeColor,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20,left: 5),
                child: Row(
                  children: [
                    CustomTextButton(
                      list: [
                        Text(
                          'NEXT',
                          style: kPrimaryTextStyle.copyWith(
                            color: kWhite
                          ),
                        )
                      ],
                      elevation: 3,
                      height: 38,
                      color: kMainThemeColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


