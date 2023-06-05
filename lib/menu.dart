import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:socialwise/widgets/CustomeListTiles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 123, 0),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          IconButton(
            icon: Image.asset(
              'images/close.png',
              width: 15,
              height: 15,
            ),
            onPressed: () {
              ZoomDrawer.of(context)!.close();
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 30, 20),
            child: Container(
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
          ),
          CustomListTile(
            iconimg: "images/whats-new.png",
            text: "What's New ",
          )
        ]),
      ),
    ));
  }
}
