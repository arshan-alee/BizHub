import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'feeds.dart';
import 'menu.dart';

class Feedpage extends StatelessWidget {
  const Feedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 221, 101, 3),
            body: ZoomDrawer(
              angle: 0.0,
              menuScreen: Menu(),
              mainScreen: Feed(),
              menuScreenWidth: 325,
              mainScreenScale: 0.1,
              slideWidth: 325,
            )));
  }
}
