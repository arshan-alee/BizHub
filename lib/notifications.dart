import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'NexaBold',
          ),
          labelLarge: TextStyle(
            fontFamily: 'NexaBold',
          ),
        ),
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Notifications',
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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 10),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(10, (index) {
                      return Container(
                        height: 115,
                        margin: EdgeInsets.fromLTRB(0, 0, 30, 20),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('images/profile-image.png'),
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Rachel Goodman",
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "commented on",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "NexaRegular",
                                        ),
                                      ),
                                      Spacer(),
                                      Image.asset(
                                        "images/dot.png",
                                        height: 6,
                                        width: 6,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Aliqua mollit culpa nulla non commodo tempor in ad ipsum. Adipisicing cillum dolore nostrud do nisi cillum. ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NexaLight',
                                      height: 1.25,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("Wed at 12:10 AM",
                                          style: TextStyle(
                                            fontSize: 12,
                                          )),
                                      Spacer(),
                                      Text(
                                        "1m ago",
                                        style: TextStyle(
                                          fontFamily: 'NexaLight',
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
