import 'package:flutter/material.dart';
// import 'package:socialwise/whatsnew.dart';
import 'splash.dart';
// import "searchresult.dart";
// import 'feed.dart';
// import 'notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}
