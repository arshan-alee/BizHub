import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialwise/homepage.dart';
// import 'package:socialwise/whatsnew.dart';
import 'firebase_options.dart';
import 'splash.dart';
// import "searchresult.dart";
// import 'feed.dart';
// import 'notifications.dart';
import 'menu.dart';
import 'prelogin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
