import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class NavBar_Widget extends StatefulWidget {
  const NavBar_Widget({super.key});

  @override
  State<NavBar_Widget> createState() => _NavBar_WidgetState();
}

class _NavBar_WidgetState extends State<NavBar_Widget> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WaterDropNavBar(
          barItems: [
            BarItem(filledIcon: Icons.home_filled, outlinedIcon: Icons.home_outlined),
            BarItem(filledIcon: Icons.search_rounded, outlinedIcon: Icons.search),
            BarItem(filledIcon: Icons.add_box_rounded, outlinedIcon: Icons.add_box_outlined),
            BarItem(filledIcon: Icons.account_circle_rounded, outlinedIcon: Icons.account_circle_outlined),
          ],
          onItemSelected: (index) {
            setState(() {
              selected = index;
            });
          },
          waterDropColor: Colors.blue.shade400,
          selectedIndex: selected,
        ),

        //-------------------------------------Yo run vaena-------------------------------
        // BottomNavigationBar(items: <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
        //   BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
        //   BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
        //   BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
        // ]),
      ],
    );
  }
}
