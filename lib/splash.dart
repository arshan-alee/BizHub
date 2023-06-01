import 'package:flutter/material.dart';
import 'dart:async';
import 'package:socialwise/prelogin.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PreLoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Image.asset(
              "images/logo.png",
              width: 220,
              height: 220,
            ),
          ),
        ),
      ),
    );
  }
}
