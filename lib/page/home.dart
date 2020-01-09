import 'package:flutter/material.dart';
import 'package:flutter_note/res/colors.dart';
import 'package:flutter_note/res/strings.dart';
import 'package:flutter_note/tab/ace_bottom_navigation_bar.dart';
import 'package:flutter_note/utils/Utils.dart';
import 'package:flutter_note/utils/toast.dart';

import 'home_fragment.dart';
import 'me.dart';

class HomePage extends StatelessWidget {
  HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      home: TabPage(),
    );
  }
}

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() {
    return _TabPageState();
  }
}

class _TabPageState extends State<TabPage> {
  int _selectIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeFragmentPage(),
    MePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectIndex),
        ),
        bottomNavigationBar: ACEBottomNavigationBar(
          type: ACEBottomNavigationBarType.protruding,
          textUnSelectedColor: Colours.text_gray,
          textSelectedColor: Colours.text_dark,

          ///中间凸起的icon边框颜色
//          protrudingColor: Colors.lightBlueAccent,
          items: [
            NavigationItemBean(
                textStr: Strings.home_title,
                image: AssetImage(Utils.getImgPath('btn_zhuye1')),
                imageSelected: AssetImage(Utils.getImgPath('btn_zhuye'))),
            NavigationItemBean(
                textStr: '', image: AssetImage(Utils.getImgPath('btn_jilu'))),
            NavigationItemBean(
                textStr: Strings.me,
                image: AssetImage(Utils.getImgPath('btn_wode')),
                imageSelected: AssetImage(Utils.getImgPath('btn_wode1')))
          ],
          onTabChangedListener: (index) {
              onItemTapped(index);
          },
        ));
  }

  void onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        _selectIndex = index;
      } else if (index == 1) {
        //弹出弹窗
       new BottomSheet(
          onClosing: (){

          },
          builder: (BuildContext context){
            return new Text('aa');
          },
        );
      } else if (index == 2) {
        _selectIndex = 1;
      }
    });
  }
}
