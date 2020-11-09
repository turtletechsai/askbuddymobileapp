import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/custom_back_button.dart';

class PostNewThought extends StatefulWidget {
  @override
  _PostNewThoughtState createState() => _PostNewThoughtState();
}

class _PostNewThoughtState extends State<PostNewThought> {
  String text = '0';
  final TextEditingController controller = TextEditingController();

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
                margin: EdgeInsets.symmetric(horizontal: 20),
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
                        maxLines: 6,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: null),
                                IconButton(icon: Icon(Icons.photo), onPressed: null),
                                IconButton(icon: Icon(Icons.attach_file), onPressed: null),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
