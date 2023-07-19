import 'package:flutter/material.dart';

import 'package:instagram/screens/mainpages/new_post.dart';
import 'package:instagram/screens/mainpages/profile_page.dart';
import 'package:instagram/screens/mainpages/reels_page.dart';
import 'package:instagram/screens/mainpages/search_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected_index = 0;
  List<Widget> pages = [
    Insta_HomePage(),
    SearchPage(),
    NewPostPage(),
    ReelsPage(),
    Profile_Page(),
  ];
  getBody() {
    return pages[selected_index];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
              // size: 36,
              ),
          currentIndex: selected_index,
          onTap: (newIndex) {
            setState(() {
              selected_index = newIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // icon: Image.asset(
              //   "assets/home_filled.png",
              // height: 28,
              // ),
              icon: Icon(
                Icons.home_filled,
                size: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              // icon: Image.asset(
              //   "assets/add.png",
              //   height: 28,
              // ),
              icon: Icon(
                Icons.add_box,
                size: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              // icon: Image.asset(
              //   "assets/reels.png",
              //   height: 32,
              // ),
              icon: Icon(
                Icons.video_collection_rounded,
                size: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(
                  "assets/1.jpg",
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
