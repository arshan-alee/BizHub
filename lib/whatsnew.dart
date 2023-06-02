import 'package:flutter/material.dart';

class WhatsNew extends StatelessWidget {
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
              'images/menu.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'images/notification.png',
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
              padding: const EdgeInsets.only(left: 30.0),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 30, 20),
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
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  fontFamily: 'NexaBold', color: Colors.grey),
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 5),
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
                                  color: const Color.fromARGB(255, 255, 123, 0),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Featured Brands',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 130,
                              margin: EdgeInsets.only(right: 13.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/brands.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Yt Brands',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '(4.5)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(width: 4),
                                      Image.asset(
                                        "images/rating.png",
                                        width: 60,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Trending',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blue,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Center(
                                    child: Text('Trending 1'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.green,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Center(
                                    child: Text('Trending 2'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.orange,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Center(
                                    child: Text('Trending 3'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.purple,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Center(
                                    child: Text('Trending 4'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
