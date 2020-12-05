import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PostPhoto extends StatelessWidget {
  final String url;
  PostPhoto({this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        child: Image.network(url),
      ),
    );
  }
}

class PostText extends StatelessWidget {
  final String text;
  PostText({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w400),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class PostVideo extends StatefulWidget {
  final String videoUrl;
  PostVideo({this.videoUrl});

  @override
  _PostVideoState createState() => _PostVideoState();
}

class _PostVideoState extends State<PostVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    print(widget.videoUrl);
    _controller = VideoPlayerController.network(widget.videoUrl)..initialize().then((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(width: 2),
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Center(
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
      ),
    );
  }
}
