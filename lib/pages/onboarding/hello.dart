import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';

class Hello extends StatelessWidget {
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
              onPressed: (){
                Navigator.pushNamed(context, '/SelectClass');
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
