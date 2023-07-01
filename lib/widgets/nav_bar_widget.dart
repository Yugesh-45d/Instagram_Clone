import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
import 'package:instagram/screens/profile_page.dart';
// import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class NavBar_Widget extends StatefulWidget {
  const NavBar_Widget({super.key});

  @override
  State<NavBar_Widget> createState() => _NavBar_WidgetState();
}

class _NavBar_WidgetState extends State<NavBar_Widget> {
  int selected_index = 0;
  void ItemSelected(int index) {
    selected_index = index;
    switch (selected_index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;

      case 1:
        break;

      case 2:
        break;

      case 3:
        break;

      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_Page()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: selected_index,
      onTap: ItemSelected,
    );
  }
}

        // WaterDropNavBar(
        //   barItems: [
        //     BarItem(filledIcon: Icons.home_filled, outlinedIcon: Icons.home_outlined),
        //     BarItem(filledIcon: Icons.search_rounded, outlinedIcon: Icons.search),
        //     BarItem(filledIcon: Icons.add_box_rounded, outlinedIcon: Icons.add_box_outlined),
        //     BarItem(filledIcon: Icons.account_circle_rounded, outlinedIcon: Icons.account_circle_outlined,
        //     ),
        //   ],
        //   onItemSelected: (index) {
        //     setState(() {
        //       selected = index;
        //     });
        //   },
        //   waterDropColor: Colors.blue.shade400,
        //   selectedIndex: selected,
        // ),