import 'package:flutter/material.dart';
import 'package:flutter_note/utils/Utils.dart';

class HomeNewTwoPage extends StatelessWidget {
  HomeNewTwoPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      home: ColorfulPage()
    );
  }
}

class ColorfulPage extends StatefulWidget{

  @override
  _ColorfulState createState() {
    return _ColorfulState();
  }

}

class _ColorfulState extends State<ColorfulPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ///背景色
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Utils.getImgPath('ic_main_bg')),
            fit: BoxFit.fill
          )
        ),
        child: Center(
          child: Text("hello"),
        ),
      ),
    );
  }

}
