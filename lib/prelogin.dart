import 'package:flutter/material.dart';
import 'package:socialwise/whatsnew.dart';

class PreLoginPage extends StatelessWidget {
  const PreLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontFamily: 'NexaBold', // Replace with the desired font family
            ),
            labelLarge: TextStyle(
              fontFamily: 'NexaBold',
            ),
          ),
        ),
        title: 'Login Page',
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 236, 214),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.png"), fit: BoxFit.cover),
            ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(height: 200,),
                    SizedBox(
                      width: 50,
                    ),
                    Image.asset(
                      'images/back.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Pre Login',
                      style: TextStyle(
                        fontFamily: 'NexaBold',
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/logo.png',
                      width: 200.0,
                      height: 200.0,
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WhatsNew()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/email.png",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Sign in with Email',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WhatsNew()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/facebook.png",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Sign in with Facebook',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WhatsNew()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Color(0xFFCE1010),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/google.png",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WhatsNew()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/apple.png",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Sign in with Apple',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
