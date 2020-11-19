import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/pages/chat_screen.dart';
import 'package:studygroups/pages/create_group.dart';
import 'package:studygroups/pages/onboarding/hello.dart';
import 'package:studygroups/pages/onboarding/learn_search.dart';
import 'package:studygroups/pages/onboarding/select_class.dart';
import 'package:studygroups/pages/post_new_thought.dart';
import 'package:studygroups/pages/view_all_groups.dart';
import 'package:studygroups/services/api/networking.dart';
import 'package:studygroups/services/api/networkmanager/auth_networkmanager.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String baseUrl = "http://18.222.164.63";

  Provider.debugCheckInvalidValueType = null;
  NetworkManager networkManager = await getAuthNetworkManager(baseUrl);

  runApp(MyApp(
    networkManager: networkManager,
  ));
}

class MyApp extends StatefulWidget {
  final NetworkManager networkManager;

  const MyApp({Key key, this.networkManager}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<NetworkRepository>(
          create: (_) => NetworkRepository(apiClient: widget.networkManager),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomePage(),
          '/PostNewThought': (context) => PostNewThought(),
          '/CreateGroup': (context) => CreateGroup(),
          '/ChatScreen' : (context) => ChatScreen(),
          '/ViewAllGroups' : (context) => ViewAllGroups(),
          '/Hello' : (context) => Hello(),
          '/SelectClass' : (context) => SelectClass(),
          '/LearnSearch' : (context) => LearnSearch()
        },
        initialRoute: '/Hello',
      ),
    );
  }
}
