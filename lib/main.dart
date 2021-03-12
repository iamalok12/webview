import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => new WebviewScaffold(
          withJavascript: true,
          withLocalStorage: true,
          withZoom: true,
          url: "https://keysq8.com",
          appBar: new AppBar(
            title: new Text("Widget webview"),
          ),
        ),
      },
    );
  }
}