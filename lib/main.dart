import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Chat",
      theme: defaultTargetPlatform == TargetPlatform.iOS
        ? lIOSTheme
        : lDefaultTheme,
      home: new Chat(),
    );
  }
}

final ThemeData lIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData lDefaultTheme = new ThemeData(
  primarySwatch: Colors.orange,
  accentColor: Colors.orangeAccent[400],
  primaryColorBrightness: Brightness.light,
);