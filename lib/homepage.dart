import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:socialwise/menu.dart';
import 'package:socialwise/whatsnew.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 123, 0),
            body: ZoomDrawer(
              angle: 0.0,
              menuScreen: Menu(),
              mainScreen: WhatsNew(),
              menuScreenWidth: 325,
              mainScreenScale: 0.1,
              slideWidth: 325,
            )));
  }
}
