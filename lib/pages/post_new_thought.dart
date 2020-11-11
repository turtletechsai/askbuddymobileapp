import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/custom_back_button.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:video_player/video_player.dart';

class PostNewThought extends StatefulWidget {
  @override
  _PostNewThoughtState createState() => _PostNewThoughtState();
}

class _PostNewThoughtState extends State<PostNewThought> {
  File _image;
  File _video;
  // File _cameraVideo;
  // VideoPlayerController _cameraVideoPlayerController;
  VideoPlayerController _videoPlayerController;
  final picker = ImagePicker();
  String text = '0';
  final TextEditingController controller = TextEditingController();


  Future getImageCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  _pickVideo() async {
    PickedFile pickedFile = await picker.getVideo(source: ImageSource.gallery);

    _video = File(pickedFile.path);

    _videoPlayerController = VideoPlayerController.file(_video)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  // _pickVideoFromCamera() async {
  //   PickedFile pickedFile = await picker.getVideo(source: ImageSource.camera);
  //
  //   _cameraVideo = File(pickedFile.path);
  //
  //   _cameraVideoPlayerController = VideoPlayerController.file(_cameraVideo)
  //     ..initialize().then((_) {
  //       setState(() {});
  //       _cameraVideoPlayerController.play();
  //     });
  // }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
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
              color: kOrange,
              icon: Icons.arrow_back,),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'New thought',
                  style: kPrimaryTextStyle.copyWith(fontSize: 30,color: kOrange,fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 28),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                decoration: kBoxDecoration,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(radius: 26,
                        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1059376736083820544/VJcr_Jip.jpg'),
                      ),
                      title: Text('Person Name',
                          style: TextStyle(
                              fontWeight: FontWeight.w500
                          )),
                      subtitle: Text('${text.length} to 1024 words',
                          style: TextStyle(
                              fontWeight: FontWeight.w300
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: controller,
                        maxLines: 20,
                        minLines: 2,
                        // maxLength: 1024,
                        autofocus: false,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          hintText: 'Share study tips, updates, articles, questions or anything study related',
                          hintStyle: kPrimaryTextStyle.copyWith(
                            color: kGrey
                          )
                        ),
                        cursorColor: kOrange,
                        onChanged: (value){
                          text = value;
                          setState(() {
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      child: _image == null
                          ? Container()
                          : ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.file(_image,fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      child: Column(
                        children: <Widget>[
                          if (_video != null)
                            _videoPlayerController.value.initialized
                                ? AspectRatio(
                              aspectRatio: _videoPlayerController.value.aspectRatio * 1,
                              child: VideoPlayer(_videoPlayerController),
                            )
                                : Container(
                              height: 200,
                            )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: getImageCamera),
                                IconButton(icon: Icon(Icons.photo), onPressed: getImageGallery),
                                IconButton(icon: Icon(Icons.attach_file), onPressed: _pickVideo),
                              ],
                            ),
                          ),
                          CustomBackButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              color: kOrange,
                          icon: Icons.arrow_forward),
                        ],
                      ),
                    )
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
