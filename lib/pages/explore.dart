import 'package:flutter/material.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/pages/chat_screen.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';
import 'package:studygroups/widgets/custom_gridview.dart';
import 'package:studygroups/widgets/custom_text_button.dart';
import 'package:studygroups/widgets/subjectContainer.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/explore_custom_gridview_container.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:web_socket_channel/io.dart';


class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  var selectedSub = 'Physics';
  Future _future;

  Future<GetExplorePageResponseData> getExploreData() async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    GetExplorePageResponseData responseModel = await adminAPI.getExploreData();
    print(responseModel);
    return responseModel;
  }

  @override
  void initState() {
    _future = getExploreData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetExplorePageResponseData>(
        future: _future,
        builder: (context,data){
          if(data.hasData){
            List<Widget> widgets = List();

            widgets.add(SizedBox(height: 15),);
            // widgets.add(Container(
            //   padding: EdgeInsets.symmetric(horizontal: 15),
            //   height: 120,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       SubjectContainer(icon: Icons.add,
            //         containerColor: selectedSub == 'Maths' ? Colors.purple[100] : Colors.transparent,
            //         iconBgColor: Colors.purple,
            //         text: 'All',
            //         onTap: (){
            //           selectedSub = 'Maths';
            //           setState(() {
            //           });
            //         },),
            //       SubjectContainer(icon: Icons.local_fire_department,
            //         containerColor: selectedSub == 'Physics' ? Colors.pink[100] : Colors.transparent,
            //         iconBgColor: Colors.pink,
            //         text: 'Physics',
            //         onTap: (){
            //           selectedSub = 'Physics';
            //           setState(() {
            //           });
            //         },),
            //       SubjectContainer(icon: Icons.bookmark_border,
            //         containerColor: selectedSub == 'Chemistry' ? Colors.blue[100] : Colors.transparent,
            //         iconBgColor: Colors.blue,
            //         text: 'Chemistry',
            //         onTap: (){
            //           selectedSub = 'Chemistry';
            //           setState(() {
            //           });
            //         },),
            //       SubjectContainer(icon: Icons.share,
            //         containerColor: selectedSub == 'Biology' ? Colors.green[100] : Colors.transparent,
            //         iconBgColor: Colors.green,
            //         text: 'Biology',
            //         onTap: (){
            //           selectedSub = 'Biology';
            //           setState(() {
            //           });
            //         },),
            //     ],
            //   ),
            // ),);
            widgets.add(Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(left: 20,right: 20,top: 16),
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
            ),);


            for (GetExplorePageResponseDataDatum datum in data.data.data){
              switch(datum.type){
                case 'EXPLORE_GROUP_TILES' :
                  widgets.add(
                    CustomGridView(
                    gridTitle: datum.title,
                    list: List.generate(datum.data.length, (index) {
                      return ExploreGridViewContainer(
                        lowerTitle: datum.data[index].title,
                        color: datum.data[index].bgColor,
                        upperTitle1: datum.data[index].totalMembers,
                        upperTitle2: 'members',
                        textColor: datum.data[index].textColor,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(channel: IOWebSocketChannel.connect('wss://socket.biviolin.com/'),)));
                        },
                      );
                    })
                  ),);
                  break;
                case 'GLOBAL_LEADERBOARD' :
                  widgets.add(Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kSizedBox,
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Text('Global Leaderboard',style: kPrimaryTextStyle.copyWith(
                            fontSize: 16,
                            color: kBlack,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: List.generate(datum.data.length, (index){
                              return ListTile(
                                leading: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: NetworkImage(datum.data[index].avatar),
                                ),
                                title: Text(datum.data[index].name,
                                    style: TextStyle(fontWeight: FontWeight.w500)),
                                subtitle: Text('${datum.data[index].points} points',
                                    style: TextStyle(fontWeight: FontWeight.w300)),
                                trailing: Text('#${datum.data[index].rank}',style: kPrimaryTextStyle.copyWith(color: kGrey),),
                              );
                            }
                        )),
                      ),
                      SizedBox(height: 4,),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
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
                    ],
                  ));
                  break;
                case 'DISCUSSION_ROOM_TILE' :
                  widgets.add(Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kSizedBox,
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                        child: Text('Discussion Rooms',style: kPrimaryTextStyle.copyWith(
                            fontSize: 16,
                            color: kBlack,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ],
                  ));
                  widgets.add(Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 112,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 11),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(datum.data.length, (index) {
                        return ExploreGridViewContainer(
                          lowerTitle: datum.data[index].title,
                          upperTitle1: datum.data[index].onlineMembers.toString(),
                          upperTitle2: 'Online',
                          width: 165,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          color: datum.data[index].bgColor,
                          textColor: datum.data[index].textColor,
                        );
                      }),
                    ),
                  ));
                  break;
              }
            }
            
            return ListView(
              children: widgets,
            );
          }else {
            return Shimmer.fromColors(
              baseColor: Colors.grey[200],
              highlightColor: Colors.grey[350],
              child: ListView(
                children: [
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SubjectContainer(
                          containerColor: Colors.grey,
                          text: '',
                          ),
                        SubjectContainer(
                          containerColor: Colors.grey,
                          text: '',
                          ),
                        SubjectContainer(
                          containerColor: Colors.grey,
                          text: '',
                          ),
                        SubjectContainer(
                          containerColor: Colors.grey,
                          text: '',
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(left: 20,right: 20,top: 16),
                    decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
                    child: TextField(),
                  ),
                  CustomGridView(
                      gridTitle: '',
                      list: List.generate(6, (index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey,
                          ),
                        );
                      })
                  )
                ],
              ),
            );
          }
        });
  }
}
