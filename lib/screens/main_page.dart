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
  // bool buttonPressed = false;
  // bool button1 = true;
  // bool button2 = true;
  // bool button3 = true;
  // bool button4 = true;
  // bool button5 = true;

  int selected_index = 0;
  List<Widget> pages = [
    Insta_HomePage(),
    SearchPage(),
    NewPostPage(),
    ReelsPage(),
    Profile_Page(),
  ];

  // void buttonPressed() {
  //   setState(() {

  //   });
  // }

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
            //------------Botton Nav bar on click wala banauna yo gareko tara vaena----------
            // BottomNavigationBarItem(
            //   icon: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         button1 = !button1;
            //       });
            //     },
            //     icon: button1 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            //   ),
            //   label: "",
            // ),
            // BottomNavigationBarItem(
            //   icon: IconButton(
            //     onPressed: () {
            //       // setState(() {
            //       //   button1 = !button1;
            //       // });
            //       buttonPressed();
            //     },
            //     icon: button2 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            //   ),
            //   label: "",
            // ),
            // BottomNavigationBarItem(
            //   icon: IconButton(
            //     onPressed: () {
            //       // setState(() {
            //       //   button1 = !button1;
            //       // });
            //       buttonPressed();
            //     },
            //     icon: button3 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            //   ),
            //   label: "",
            // ),
            // BottomNavigationBarItem(
            //   icon: IconButton(
            //     onPressed: () {
            //       // setState(() {
            //       //   button1 = !button1;
            //       // });
            //       buttonPressed();
            //     },
            //     icon: button4 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            //   ),
            //   label: "",
            // ),
            // BottomNavigationBarItem(
            //   icon: IconButton(
            //     onPressed: () {
            //       // setState(() {
            //       //   button1 = !button1;
            //       // });
            //       buttonPressed();
            //     },
            //     icon: button5 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            //   ),
            //   label: "",
            // ),
            BottomNavigationBarItem(
              icon:
                  // onPressed: () {
                  //   setState(() {
                  //     buttonPressed = !buttonPressed;
                  //   });
                  // },
                  Icon(
                Icons.home_filled,
                color: Colors.black,
                // buttonPressed ? Icons.home_filled : Icons.home_outlined,
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
              // icon: Icon(
              //   Icons.account_circle_outlined,
              //   color: Colors.black,
              // ),
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
