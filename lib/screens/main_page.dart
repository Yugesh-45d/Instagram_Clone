import 'package:flutter/material.dart';
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/screens/profile_page.dart';
import 'package:instagram/screens/search_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var selectedIndex = 0;

  List<Widget> pages = [
    Insta_HomePage(),
    SearchPage(),
    Insta_HomePage(),
    SearchPage(),
    Profile_Page(),
  ];

  getBody() {
    // yasle index ko aadhar maa pages list bata dynamic page dinxa
    return pages[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // yaha index ko aadhar maa body matra replace hunxa..
        body: getBody(),
        // yo navigation bar sabai page maa rahirahanxa.. mathi body matra replace huney ho so
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
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
