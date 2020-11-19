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
              Flexible(
                child: GridView.count(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  primary: false,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  childAspectRatio:1,
                  children: List.generate(
                      data.data.data[0].data.length, (index) => SelectClassContainer(
                    size: size,
                    className: data.data.data[0].data[index].code.toString(),
                    onTap: () {
                      selectedClass = data.data.data[0].data[index].code;
                      setState(() {});
                    },
                    bgColor: selectedClass == data.data.data[0].data[index].code ? Colors.green : null,
                  ),),
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
