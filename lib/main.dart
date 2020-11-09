import 'package:flutter/material.dart';
import 'package:studygroups/pages/create_group.dart';
import 'package:studygroups/pages/post_new_thought.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomePage(),
        '/PostNewThought' : (context) => PostNewThought(),
        '/CreateGroup' : (context) => CreateGroup(),
      },
      initialRoute: '/',
    );
  }
}
