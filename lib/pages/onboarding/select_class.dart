import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/repository/auth_repository.dart';
import 'package:studygroups/widgets/select_class_container.dart';

class SelectClass extends StatefulWidget {
  @override
  _SelectClassState createState() => _SelectClassState();
}

class _SelectClassState extends State<SelectClass> {
  int selectedClass;
  Future _future;

  Future<GetOnboardingData> getOnboardingData() async {
    final adminAPI = Provider.of<NetworkRepository>(context, listen: false);
    GetOnboardingData responseModel = await adminAPI.getOnboarding();
    print(responseModel);
    return responseModel;
  }

  @override
  void initState() {
    _future = getOnboardingData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (context, data) {
          if (data.hasData) {
            List<Widget> widgets = List();

            widgets.add(
              SizedBox(
                height: 30,
              ),
            );
            widgets.add(
              Align(
                child: Text(
                  data.data.data[0].title,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                ),
                alignment: Alignment.center,
              ),
            );
            widgets.add(
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectClassContainer(
                            size: size,
                            className: '5',
                            onTap: () {
                              selectedClass = 5;
                              setState(() {});
                            },
                            bgColor: selectedClass == 5 ? Colors.green : null,
                          ),
                          SelectClassContainer(
                              size: size,
                              className: '6',
                              onTap: () {
                                selectedClass = 6;
                                setState(() {});
                              },
                              bgColor:
                                  selectedClass == 6 ? Colors.green : null),
                          SelectClassContainer(
                              size: size,
                              className: '7',
                              onTap: () {
                                selectedClass = 7;
                                setState(() {});
                              },
                              bgColor: selectedClass == 7 ? Colors.green : null)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectClassContainer(
                            size: size,
                            className: '8',
                            onTap: () {
                              selectedClass = 8;
                              setState(() {});
                            },
                            bgColor: selectedClass == 8 ? Colors.green : null,
                          ),
                          SelectClassContainer(
                              size: size,
                              className: '9',
                              onTap: () {
                                selectedClass = 9;
                                setState(() {});
                              },
                              bgColor:
                                  selectedClass == 9 ? Colors.green : null),
                          SelectClassContainer(
                              size: size,
                              className: '10',
                              onTap: () {
                                selectedClass = 10;
                                setState(() {});
                              },
                              bgColor:
                                  selectedClass == 10 ? Colors.green : null)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SelectClassContainer(
                            size: size,
                            className: '11',
                            onTap: () {
                              selectedClass = 11;
                              setState(() {});
                            },
                            bgColor: selectedClass == 11 ? Colors.green : null,
                          ),
                          SelectClassContainer(
                              size: size,
                              className: '12',
                              onTap: () {
                                selectedClass = 12;
                                setState(() {});
                              },
                              bgColor:
                                  selectedClass == 12 ? Colors.green : null),
                          Container(
                            width: size * 0.24,
                            height: size * 0.24,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );

            widgets.add(Container(
              margin: EdgeInsets.only(bottom: 20),
              width: size - 50,
              height: 50,
              child: RaisedButton(
                child: Text(
                  'GET STARTED',
                  style: TextStyle(fontSize: 16, color: kWhite),
                ),
                onPressed: selectedClass == null
                    ? null
                    : () {
                        Navigator.pushNamed(context, '/LearnSearch');
                      },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
                color: Colors.green,
              ),
            ));

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: widgets,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
