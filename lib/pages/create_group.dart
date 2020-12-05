import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/models/request.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';
import 'package:studygroups/widgets/custom_back_button.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/custom_text_button.dart';
import 'package:studygroups/widgets/subjectContainer.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  String groupName,groupDes;
  var selectedSub = 'Physics';
  bool switchValue = true;
  TextEditingController groupNameTextEditingController = TextEditingController();
  TextEditingController groupDesTextEditingController = TextEditingController();
  Future _future;
  Future _future1;

  Future<GetSubjectsForStudyGroupsResponseBodyData>
      getSubjectsForStudyGroupsData() async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    GetSubjectsForStudyGroupsResponseBodyData responseModel =
        await adminAPI.getSubjectsForStudyGroups();
    print(responseModel);
    return responseModel;
  }

  Future<CreateGroupResponseBody>
  createGroup(CreateStudyGroupRequestBody requestBody) async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    CreateGroupResponseBody  responseModel =
    await adminAPI.createGroup(requestBody);
    return responseModel;
  }

  @override
  void initState() {
    _future = getSubjectsForStudyGroupsData();
    super.initState();
  }

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
                onPressed: () {
                  Navigator.pop(context);
                },
                color: kMainThemeColor,
                icon: Icons.arrow_back,
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'New study group',
                  style: kPrimaryTextStyle.copyWith(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Name of your Group',
                  style: kPrimaryTextStyle.copyWith(
                      fontSize: 16, color: kBlack, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: kBoxDecoration.copyWith(
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  controller: groupNameTextEditingController,
                  cursorColor: kMainThemeColor,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
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
                child: Text(
                  'Pick your subject',
                  style: kPrimaryTextStyle.copyWith(
                      fontSize: 16, color: kBlack, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 120,
                  child: FutureBuilder(
                    future: _future,
                    builder: (context, data) {
                      if (data.hasData) {
                        List<Widget> widgets = List();

                        for (GetSubjectsForStudyGroupsResponseBodyDataDatum datum
                            in data.data.data) {
                          widgets.add(
                            Container(
                              margin: EdgeInsets.only(right: 12),
                              child: SubjectContainer(
                                icon: datum.icon,
                                containerColor: selectedSub == datum.display
                                    ? Colors.pink[100]
                                    : Colors.transparent,
                                text: datum.display,
                                onTap: () {
                                  selectedSub = datum.display;
                                  setState(() {});
                                },
                              ),
                            ),
                          );
                        }

                        return ListView(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          scrollDirection: Axis.horizontal,
                          children: widgets,
                        );
                      }else{
                        return Container();
                      }
                    },
                  )),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Describe your group',
                  style: kPrimaryTextStyle.copyWith(
                      fontSize: 16, color: kBlack, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: kBoxDecoration.copyWith(
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  controller: groupDesTextEditingController,
                  cursorColor: kMainThemeColor,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Tell us what is it about',
                      hintStyle: kPrimaryTextStyle.copyWith(color: kGreyLite)),
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
                          Text(
                            'Privacy',
                            style: kPrimaryTextStyle.copyWith(
                                fontSize: 16,
                                color: kBlack,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('Public',
                              style: kPrimaryTextStyle.copyWith(
                                  fontSize: 28, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (value) {
                        switchValue = value;
                        setState(() {});
                      },
                      activeColor: kMainThemeColor,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 5),
                child: Row(
                  children: [
                    CustomTextButton(
                      list: [
                        Text(
                          'NEXT',
                          style: kPrimaryTextStyle.copyWith(color: kWhite),
                        )
                      ],
                      elevation: 3,
                      height: 38,
                      color: kMainThemeColor,
                      onPressed: ()async{
                        String groupName = groupNameTextEditingController.text;
                        String groupDes = groupDesTextEditingController.text;
                        String privacy = "";
                        if(switchValue == true){
                          privacy = "PUBLIC";
                        }else{
                          privacy = "PRIVATE";
                        }
                        CreateStudyGroupRequestBody requestBody = CreateStudyGroupRequestBody(
                            groupName: groupName,
                            groupDescription: groupDes,
                            groupSubject: selectedSub,
                            privacy: privacy
                        );

                        CreateGroupResponseBody response = await createGroup(requestBody);
                        if(response.meta.success){
                          Navigator.pop(context);
                        }else{
                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Error !')));
                        }

                      },
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
