import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/models/request.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';


class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final TextEditingController controller = TextEditingController();

  Future<UpdateUsernameResponseBody>
  updateUsername(UpdateUsernameRequestBody requestBody) async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    UpdateUsernameResponseBody responseModel =
    await adminAPI.updateUsername(requestBody);
    return responseModel;
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff009786),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text('Hello, stranger.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size * 0.11,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(height: 5),
                Text('Please tell us who you are before continuing',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size * 0.055,
                        fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: kWhite,width: 2),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white24
                  ),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: kWhite,
                      )
                    ),
                    cursorColor: kWhite,
                    style: TextStyle(
                      color: kWhite
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: size - 50,
            height: 50,
            child: RaisedButton(
              child: Text('Continue',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff004a43)
              ),),
              onPressed: ()async{
                UpdateUsernameRequestBody requestBody = UpdateUsernameRequestBody(username: controller.text);
                UpdateUsernameResponseBody response = await updateUsername(requestBody);

                if(response.meta.success){
                  Navigator.pushNamed(context, '/SelectClass');
                }else{
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Error !')));
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
              ),
              color: Color(0xff65c0b7),
            ),
          )
        ],
      ),
    );
  }
}
