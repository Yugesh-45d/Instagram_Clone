import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:instagram/screens/new_post.dart';
import 'package:instagram/screens/profile_page.dart';
import 'package:instagram/screens/reels_page.dart';
import 'package:instagram/screens/search_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
=======
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/screens/profile_page.dart';
import 'package:instagram/screens/search_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});
>>>>>>> d6ab9743e0d7c5a1221f3798ea7e9d05ea040c52

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
<<<<<<< HEAD
  int selected_index = 0;
  List<Widget> pages = [
    Insta_HomePage(),
    SearchPage(),
    NewPostPage(),
    ReelsPage(),
=======
  var selectedIndex = 0;

  List<Widget> pages = [
    Insta_HomePage(),
    SearchPage(),
    Insta_HomePage(),
    SearchPage(),
>>>>>>> d6ab9743e0d7c5a1221f3798ea7e9d05ea040c52
    Profile_Page(),
  ];

  getBody() {
<<<<<<< HEAD
    return pages[selected_index];
=======
    // yasle index ko aadhar maa pages list bata dynamic page dinxa
    return pages[selectedIndex];
>>>>>>> d6ab9743e0d7c5a1221f3798ea7e9d05ea040c52
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
<<<<<<< HEAD
        body: getBody(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected_index,
          onTap: (newIndex) {
            setState(() {
              selected_index = newIndex;
=======
        // yaha index ko aadhar maa body matra replace hunxa..
        body: getBody(),
        // yo navigation bar sabai page maa rahirahanxa.. mathi body matra replace huney ho so
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
>>>>>>> d6ab9743e0d7c5a1221f3798ea7e9d05ea040c52
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
