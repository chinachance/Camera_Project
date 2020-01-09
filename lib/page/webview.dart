import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_note/components/app_bar.dart';
import 'package:flutter_note/res/colors.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  final String title;

  WebViewPage(this.url, this.title);

  @override
  State<StatefulWidget> createState() {
    return _WebViewState(url, title);
  }
}

class _WebViewState extends State {
  final String url;
  final String title;

  _WebViewState(this.url, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: title,
        isBack: false,
        backgroundColor: Colours.app_main,
      ),
      body: WebviewScaffold(
        url: url,
        withZoom: false,
        withLocalStorage: false,
        withJavascript: true,
      ),
    );
  }
}
