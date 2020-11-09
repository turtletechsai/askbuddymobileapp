import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/Widgets/share_thought_container.dart';
import 'package:studygroups/Widgets/post_container.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';
import 'package:studygroups/widgets/custom_filter_box.dart';
import 'package:studygroups/widgets/post_content_widgets.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  Future _future;

  Future<GetFeedPageResponseData> getFeedData() async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    GetFeedPageResponseData responseModel = await adminAPI.getFeedData();
    return responseModel;
  }

  @override
  void initState() {
    _future = getFeedData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetFeedPageResponseData>(
        future: _future,
        builder: (context, data) {
          if (data.hasData) {
            List<Widget> widgets = List();

            widgets.add(ShareThoughtContainer(
              title: 'Share a thought',
              subtitle:
                  'Share study tips, articles, doubts or anything study related',
              imgUrl:
                  'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
              onTap: () {
                Navigator.pushNamed(context, '/PostNewThought');
              },
            ));

            for (GetFeedPageResponseDataDatum datum in data.data.data) {
              switch (datum.type) {
                case "feed_filter":
                  widgets.add(Container(
                      child: SimpleAccountMenu(
                        data: datum.data,
//                        strings: ['Recent Activity', 'Old Posts', 'Most Popular'],
                        iconColor: Colors.white,
                        onChange: (index) {},
                      )));
                  break;
                case "feed_item":
                  break;
                default:
                  break;
              }
            }

            return ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              children: [
                // FilterSelection(),

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
                    PostPhoto(
                      url:
                          'https://c.files.bbci.co.uk/14824/production/_95640048_a2c8259e-a5f2-45fa-bcaa-16111d660c7e.jpg',
                    )
                  ],
                )
              ],
            );
          } else {
            return Container();
          }
        });
  }
}
