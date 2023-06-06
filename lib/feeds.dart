import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key});

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
            'Feeds',
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
              'images/menu.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'images/add.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
          ],
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
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SafeArea(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final searchBarWidth = constraints.maxWidth - 60;
                    final itemHeight = constraints.maxHeight / 1.9;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                hintText: 'Explore',
                                hintStyle: TextStyle(
                                    fontFamily: 'NexaRegular',
                                    color: Colors.grey),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 5),
                                  child: Image.asset(
                                    "images/search.png",
                                    width: 15,
                                    height: 15,
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 35,
                                  minHeight: 35,
                                ),
                                suffixIcon: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromARGB(255, 221, 101, 3),
                                  ),
                                  width: 60,
                                  height: 60,
                                  child: Center(
                                    child: Image.asset(
                                      'images/filter.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                height: itemHeight,
                                margin: EdgeInsets.only(bottom: 20),
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              'images/profile-image.png'),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Rachel Goodman"),
                                            Text(
                                              "New York, USA",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: double.infinity,
                                        height: itemHeight / 3,
                                        child: Image.asset(
                                          "images/post.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          "Review",
                                        ),
                                        Spacer(),
                                        Text(
                                          '(4.5)',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(width: 4),
                                        Image.asset(
                                          "images/rating.png",
                                          width: 60,
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      "Aliqua mollit culpa nulla non commodo tempor in ad ipsum. Adipisicing cillum dolore nostrud do nisi cillum. Nisi excepteur sit reprehenderit amet Lorem cillum incididunt.",
                                      style: TextStyle(
                                          fontFamily: 'NexaLight',
                                          height: 1.2,
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 17,
                                          backgroundColor: const Color.fromARGB(
                                              255, 255, 123, 0),
                                          child: Image.asset(
                                            "images/like.png",
                                            width: 15,
                                            height: 15,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        CircleAvatar(
                                          radius: 17,
                                          backgroundColor: const Color.fromARGB(
                                              255, 255, 123, 0),
                                          child: Image.asset(
                                            "images/comment.png",
                                            width: 15,
                                            height: 15,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        CircleAvatar(
                                          radius: 17,
                                          backgroundColor: const Color.fromARGB(
                                              255, 255, 123, 0),
                                          child: Image.asset(
                                            "images/share.png",
                                            width: 15,
                                            height: 15,
                                          ),
                                        ),
                                        Spacer(),
                                        SizedBox(width: 13),
                                        Text(
                                          "50 likes",
                                          style: TextStyle(
                                              fontFamily: 'NexaLight',
                                              fontSize: 8),
                                        ),
                                        SizedBox(width: 13),
                                        Text(
                                          "11 Comments",
                                          style: TextStyle(
                                              fontFamily: 'NexaLight',
                                              fontSize: 8),
                                        ),
                                        SizedBox(width: 13),
                                        Text(
                                          "5 Shares",
                                          style: TextStyle(
                                              fontFamily: 'NexaLight',
                                              fontSize: 8),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
