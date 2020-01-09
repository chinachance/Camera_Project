import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note/res/resources.dart';

class HomeFragmentPage extends StatefulWidget {
  const HomeFragmentPage() : super();

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomeFragmentPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
          length: choices.length,
          child: new Scaffold(
            appBar: new AppBar(
              title: const Text(Strings.home_title),
              backgroundColor: Colours.app_main,
              bottom: new TabBar(
                isScrollable: true,
                tabs: choices.map((Choice choice) {
                  return new Tab(
                    text: choice.title,
                  );
                }).toList(),
              ),
            ),
            body: new TabBarView(
              children: choices.map((Choice choice) {
                return new Padding(
                  padding: const EdgeInsets.all(Dimens.gap_dp16),
                  child: new ChoiceCard(choice: choice),
                );
              }).toList(),
            ),
          )),
    );
  }
}

class Choice {
  const Choice({this.title});

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '动态'),
  const Choice(title: '日常'),
  const Choice(title: '待办'),
  const Choice(title: '习惯'),
  const Choice(title: '小记'),
  const Choice(title: '长文'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
