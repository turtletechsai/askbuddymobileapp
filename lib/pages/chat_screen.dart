import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/chat_screen_rounded_container.dart';
import 'package:studygroups/widgets/message_bubble.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatScreen extends StatefulWidget {
  final WebSocketChannel channel;
  ChatScreen({this.channel});

  @override
  _ChatScreenState createState() => _ChatScreenState(channel: channel);
}

class _ChatScreenState extends State<ChatScreen> {
  WebSocketChannel channel;
  bool isMe;
  String message;
  bool showBottomOptions = false;
  List<String> data = [];
  TextEditingController _controller = TextEditingController();

  _ChatScreenState({this.channel}){
    channel.stream.listen((data) {
      print(data);
      setState(() {
        this.data.add(data);
      });
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kLiteWhite,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
                child: Container(
              color: kWhite,
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
                    Navigator.pop(context);
                  },),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.green, width: 1.5),
                              borderRadius: BorderRadius.circular(30)),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 8),
                          child: Text(
                            'Avengers Endgame',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert_outlined)
                ],
              ),
            )),
            Expanded(
              // child: StreamBuilder(
              //   stream: widget.channel.stream,
              //   builder: (context, snapshot) {
              //     return Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 24.0),
              //       child: Text(snapshot.hasData ? '${snapshot.data}' : 'snapshot data is empty'),
              //     );
              //   },
              //   initialData: {
              //
              //   },
              // )
              child: ListView.builder(itemCount: data.length,
              itemBuilder: (context,index){
                return Text(data[index].toString());
              },),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400], width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: kWhite),
                    child: IconButton(
                      icon: showBottomOptions
                          ? Icon(Icons.close)
                          : Icon(Icons.attach_file),
                      onPressed: () {
                        showBottomOptions = !showBottomOptions;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: kBoxDecoration.copyWith(
                          borderRadius: BorderRadius.circular(25)),
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              onChanged: (value) {
                                message = value;
                              },
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none)),
                              cursorColor: Colors.green,
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.green,
                              ),
                              onPressed: _sendMessage)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
                margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                height: showBottomOptions ? height * 0.25 : 0,
                width: width,
                decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 5)
                    ]),
                duration: Duration(milliseconds: 500),
                curve: Curves.elasticOut,
                child: showBottomOptions
                    ? Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ChatScreenRoundedContainer(
                                    bgColor: Colors.orange[100],
                                    iconColor: Colors.orange,
                                    text: 'Camera',
                                    icon: Icons.camera_alt,
                                  ),
                                  ChatScreenRoundedContainer(
                                    bgColor: Colors.blue[100],
                                    iconColor: Colors.blue,
                                    text: 'Audio',
                                    icon: Icons.keyboard_voice,
                                  ),
                                  ChatScreenRoundedContainer(
                                    bgColor: Colors.purple[100],
                                    iconColor: Colors.purple,
                                    text: 'Media',
                                    icon: Icons.insert_drive_file_outlined,
                                  ),
                                  ChatScreenRoundedContainer(
                                    bgColor: Colors.red[100],
                                    iconColor: Colors.red,
                                    text: 'Location',
                                    icon: Icons.location_on_outlined,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : Container())
          ],
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      widget.channel.stream;
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}

class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10),
      children: [
        MessageBubble(
          msg: 'hello how are you',
          isMe: false,
          imgUrl: 'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
        ),
        MessageBubble(
          msg: 'i\'m fine, How are you?',
          isMe: true,
        ),
        MessageBubble(
          msg: 'i am also fine , do you know robert is dead ooh my god i cant even believe this he was alive 10 minutes ago',
          isMe: false,
          imgUrl: 'https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg',
        ),
      ],
    );
  }
}



