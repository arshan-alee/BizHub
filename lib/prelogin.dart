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
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              'What\'s New',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'NexaBold',
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Image.asset(
                'images/back.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
          ),
          body: Stack(children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bg.png"), fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Expanded(
                child: SafeArea(
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
              ),
            ),
          ]),
        ));
  }
}
