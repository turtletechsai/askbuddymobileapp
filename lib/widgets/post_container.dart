import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studygroups/models/request.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';
import 'package:studygroups/widgets/comment_bubble.dart';

class PostContainer extends StatefulWidget {
  final String userName, userImgUrl, lastSeen, likes, comments;
  final List<Widget> list;
  final bool isBookmarked;
  final int id;

  PostContainer(
      {this.lastSeen,
      this.userImgUrl,
      this.userName,
      @required this.list,
      this.likes,
      this.comments,
      this.isBookmarked = false,
      @required this.id});

  @override
  _PostContainerState createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  bool isBookmarked = false;
  bool isLiked = false;
  Future _future;

  Future<GetCommentsResponseData> getComments(int post) async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    GetCommentsResponseData responseModel = await adminAPI.getComments(post);
    print(responseModel.meta.message);
    return responseModel;
  }

  @override
  void initState() {
    _future = getComments(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: kBoxDecoration,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(widget.userImgUrl),
            ),
            title: Text(widget.userName,
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text(widget.lastSeen,
                style: TextStyle(fontWeight: FontWeight.w300)),
            trailing: InkWell(
              onTap: () {
                adminAPI
                    .bookmarkPost(BookmarkPostRequestBody(id: widget.id))
                    .then((BookmarkPostResponseBody responseModel) {
                  if (responseModel.meta.success) {
                    setState(() {
                      isBookmarked = !isBookmarked;
                    });
                  } else {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Error! try again')));
                  }
                });
              },
              child: Icon(
                  isBookmarked
                      ? Icons.bookmark_outlined
                      : Icons.bookmark_border,
                  size: 30,
                  color: kBlack),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.list,
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          adminAPI
                              .likePost(LikePostRequestBody(id: widget.id))
                              .then((LikePostResponseBody responseModel) {
                            if (responseModel.meta.success) {
                              setState(() {
                                isLiked = !isLiked;
                                print(isLiked);
                              });
                            } else {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Error! try again')));
                            }
                          });
                        },
                        child: Icon(
                          isLiked == false
                              ? FontAwesomeIcons.thumbsUp
                              : FontAwesomeIcons.solidThumbsUp,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '${widget.likes} likes',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: MediaQuery.of(context).viewInsets,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: FutureBuilder(
                                  future: _future,
                                  builder: (context, data) {
                                    if (data.hasData) {
                                      List<Widget> list = [];

                                      for (GetCommentsResponseDataDatum datum
                                          in data.data.data) {
                                        switch (datum.resourceType) {
                                          case "text":
                                            list.add(
                                              CommentBubbleText(
                                                msg: datum.comment,
                                                imgUrl: datum.avatar,
                                              ),
                                            );
                                            break;
                                          case "image":
                                            list.add(
                                              CommentBubbleImage(
                                                imgUrl: datum.avatar,
                                                photoUrl: datum.comment,
                                              ),
                                            );
                                            break;
                                        }
                                      }

                                      return ListView(
                                        children: list,
                                      );
                                    } else {
                                      return Container();
                                    }
                                  },
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25)),
                                ),
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10, top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey[400],
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: kWhite),
                                      child: IconButton(
                                        icon: Icon(Icons.attach_file),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: kBoxDecoration.copyWith(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: TextField(
                                                onChanged: (value) {},
                                                decoration: InputDecoration(
                                                    border:
                                                        UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide
                                                                    .none)),
                                                cursorColor: Colors.green,
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.send,
                                                color: Colors.green,
                                              ),
                                              onPressed: () {},
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.mode_comment,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text('${widget.comments} comments',
                            style: TextStyle(fontWeight: FontWeight.w400))
                      ],
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
