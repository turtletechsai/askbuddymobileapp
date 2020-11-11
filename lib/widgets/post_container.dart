import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studygroups/models/request.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';

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
              onTap: (){
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
                Container(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
