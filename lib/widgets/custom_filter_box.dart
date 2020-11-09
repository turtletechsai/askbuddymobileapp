import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studygroups/constants.dart';
import 'package:studygroups/models/response.dart';


class SimpleAccountMenu extends StatefulWidget {
  final List<FeedDatumDatum> data;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color iconColor;
  final ValueChanged<int> onChange;

  const SimpleAccountMenu({
    Key key,
    this.borderRadius,
    this.backgroundColor = const Color(0xFFF67C0B9),
    this.iconColor = Colors.black,
    this.onChange, this.data,
  })  : assert(data != null),
        super(key: key);
  @override
  _SimpleAccountMenuState createState() => _SimpleAccountMenuState();
}

class _SimpleAccountMenuState extends State<SimpleAccountMenu>
    with SingleTickerProviderStateMixin {

  String selectedFilterIndex = "";

  GlobalKey _key;
  bool isMenuOpen = false;
  Offset buttonPosition;
  Size buttonSize;
  OverlayEntry _overlayEntry;
  BorderRadius _borderRadius;

  @override
  void initState() {

    print(widget.data.length);
    _borderRadius = widget.borderRadius ?? BorderRadius.circular(4);
    print(widget.data[0].display);
    selectedFilterIndex = widget.data[0].display;
    _key = LabeledGlobalKey("button_icon");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  findButton() {
    RenderBox renderBox = _key.currentContext.findRenderObject();
    buttonSize = renderBox.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void closeMenu() {
    _overlayEntry.remove();
    isMenuOpen = !isMenuOpen;
  }

  void openMenu() {
    findButton();
    _overlayEntry = _overlayEntryBuilder();
    Overlay.of(context).insert(_overlayEntry);
    isMenuOpen = !isMenuOpen;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      height: 40,
      margin: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width-190, 10),
      decoration: kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(selectedFilterIndex),
          IconButton(
            icon: Icon(FontAwesomeIcons.chevronDown,size: 16),
            color: kBlack,
            onPressed: () {
              if (isMenuOpen) {
                closeMenu();
              } else {
                openMenu();
              }
            },
          ),
        ],
      ),
    );
  }

  OverlayEntry _overlayEntryBuilder() {
    return OverlayEntry(
      builder: (context) {
        return Positioned(
          top: buttonPosition.dy + buttonSize.height - 20,
          left: 20,
          width: MediaQuery.of(context).size.width-223,
          child: Material(
            color: Colors.transparent,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: widget.data.length * buttonSize.height - 85,
                    decoration: kBoxDecoration,
                    child: Theme(
                      data: ThemeData(
                        iconTheme: IconThemeData(
                          color: widget.iconColor,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(widget.data.length, (index) {
                          return GestureDetector(
                            onTap: () {

                              selectedFilterIndex = widget.data[index].display;
//                              if(index == 0){
//                                selectedFilterIndex = 'Recent Activity';
//                              }else if(index == 1){
//                                selectedFilterIndex = 'Old Posts';
//                              }else{
//                                selectedFilterIndex = 'Most Popular';
//                              }
                              setState(() {

                              });
                              closeMenu();
                            },
                            child: Container(
                              width: buttonSize.width,
                              height: buttonSize.height - 30,
                              child: Center(child: Text(widget.data[index].display)),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}