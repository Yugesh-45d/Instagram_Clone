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
  bool home = true;
  bool search = false;
  bool add = false;
  bool reels = false;
  bool avatar = false;
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
          currentIndex: selected_index,
          onTap: (newIndex) {
            setState(() {
              selected_index = newIndex;
              switch (selected_index) {
                case 0:
                  {
                    home = true;
                    search = false;
                    add = false;
                    reels = false;
                    avatar = false;
                  }
                case 1:
                  {
                    home = false;
                    search = true;
                    add = false;
                    reels = false;
                    avatar = false;
                  }
                case 2:
                  {
                    home = false;
                    search = false;
                    add = true;
                    reels = false;
                    avatar = false;
                  }
                case 3:
                  {
                    home = false;
                    search = false;
                    add = false;
                    reels = true;
                    avatar = false;
                  }
                case 4:
                  {
                    home = false;
                    search = false;
                    add = false;
                    reels = false;
                    avatar = true;
                  }
              }
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: home
                  ? Image.asset("assets/home_filled.png", height: 28)
                  : Image.asset("assets/home.png", height: 28),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: search
                  ? Icon(Icons.search, size: 32, color: Colors.black)
                  : Image.asset("assets/search.png", height: 28),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: add
                  ? Image.asset("assets/add_filled.png", height: 28)
                  : Image.asset("assets/add.png", height: 28),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: reels
                  ? Image.asset("assets/reels_filled.png", height: 28)
                  : Image.asset("assets/reels.png", height: 28),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: avatar
                  ? Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.black,
                      ),
                      CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage("assets/1.jpg"),
                      ),
                    ])
                  : CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage("assets/1.jpg"),
                    ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
