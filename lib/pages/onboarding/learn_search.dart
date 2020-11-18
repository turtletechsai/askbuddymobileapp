import 'package:flutter/material.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/widgets/learn_search_container.dart';

class LearnSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: kBlack,
            ),
            onPressed: () {},
          ),
          backgroundColor: kWhite),
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.thumb_up,
                color: Colors.lightBlueAccent,
                size: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Text(
                'What would you like to learn today?',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xfff4f4f4)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Search for Chapters, Videos & Goals'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LearnSearchContainer(
                    size: size,
                    icon: Icons.science,
                    name: 'Chemistry',
                    color: Color(0xffffb52c),
                  ),
                  LearnSearchContainer(
                    size: size,
                    icon: Icons.crop_square_sharp,
                    name: 'Maths',
                    color: Color(0xfffe7273),
                  ),
                  LearnSearchContainer(
                    size: size,
                    icon: Icons.text_rotation_angleup_outlined,
                    name: 'Physics',
                    color: Color(0xff5ac0c4),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: LearnSearchContainer(
                  size: size,
                  icon: Icons.accessibility,
                  name: 'Biology',
                  color: Color(0xff5dc645),
                ),
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kWhite,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.textsms_outlined),
              label: 'Doubts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset_outlined),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_align_left_outlined),
              label: 'Tests',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Me',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
        )
    );
  }
}
