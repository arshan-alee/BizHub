import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:socialwise/feedpage.dart';
import 'package:socialwise/feeds.dart';
import 'package:socialwise/homepage.dart';
import 'package:socialwise/prelogin.dart';
import 'package:socialwise/whatsnew.dart';
import 'package:socialwise/widgets/CustomeListTiles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 101, 3),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 30, 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Image.asset(
                      'images/close.png',
                      width: 15,
                      height: 15,
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)!.close();
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
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
                      hintStyle:
                          TextStyle(fontFamily: 'NexaBold', color: Colors.grey),
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Image.asset(
                            'images/search.png',
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomListTile(
            iconimg: "images/whats-new.png",
            text: "What's New ",
            onclick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
          CustomListTile(
            iconimg: "images/feed.png",
            text: "Feed",
            onclick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Feedpage()));
            },
          ),
          CustomListTile(
            iconimg: "images/profile.png",
            text: "My Profile",
            onclick: () {},
          ),
          CustomListTile(
            iconimg: "images/business.png",
            text: "My business",
            onclick: () {},
          ),
          CustomListTile(
            iconimg: "images/bookmark.png",
            text: "Bookmarks",
            onclick: () {},
          ),
          CustomListTile(
            iconimg: "images/logout.png",
            text: "Logout",
            onclick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PreLoginPage()));
            },
          ),
        ]),
      ),
    ));
  }
}
