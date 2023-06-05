import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:socialwise/whatsnew.dart';
import 'package:socialwise/widgets/CustomButton.dart';

class PreLoginPage extends StatelessWidget {
  const PreLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
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
          backgroundColor: const Color.fromARGB(255, 255, 236, 214),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.png"), fit: BoxFit.cover),
            ),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(height: 200,),
                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset(
                      'images/back.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
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
                    const SizedBox(height: 30),
                    const CustomButton(
                        icon: 'images/email.png',
                        text: "Sign in with Email",
                        bgcolor: Colors.white,
                        txtcolor: Colors.black),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () async {
                            if (await (GoogleSignIn()).isSignedIn()) {
                              await (GoogleSignIn()).signOut();
                            }
                            final GoogleSignInAccount? googleUser =
                                await GoogleSignIn().signIn();

                            if (googleUser == null) {
                              return;
                            }
                            print(googleUser.displayName);
                            print(googleUser.email);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: const Color(0xFFCE1010),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/google.png",
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(height: 10),
                    const CustomButton(
                      icon: 'images/facebook.png',
                      text: "Sign in with Facebook",
                      bgcolor: Colors.blue,
                      txtcolor: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    const CustomButton(
                      icon: 'images/apple.png',
                      text: "Sign in with Apple",
                      bgcolor: Colors.black,
                      txtcolor: Colors.white,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
