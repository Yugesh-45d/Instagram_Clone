import 'package:flutter/material.dart';

import 'package:instagram/screens/new_post.dart';
import 'package:instagram/screens/profile_page.dart';
import 'package:instagram/screens/reels_page.dart';
import 'package:instagram/screens/search_page.dart';
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
  var selectedIndex = 0;

  getBody() {

    return pages[selected_index];


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: getBody(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected_index,
          onTap: (newIndex) {
            setState(() {
              selected_index = newIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
