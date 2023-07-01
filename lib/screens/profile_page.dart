// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/widgets/nav_bar_widget.dart';
import 'package:instagram/widgets/personal_story_widget.dart';
import 'package:instagram/widgets/profile_page_widget.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //---------------Top wala username and icons section----------
              Profile_Page_Widget(),
              // ---------------------------Story highlights Section------------------------
              Personal_Story_Widget(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.grid_on_sharp,
                      size: 28,
                    ),
                    Icon(
                      Icons.account_box_outlined,
                      size: 32,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Image(
                      image: AssetImage("assets/1.jpg"),
                      width: 119,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Image(
                      image: AssetImage("assets/3.jpg"),
                      width: 119,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Image(
                      image: AssetImage("assets/1.jpg"),
                      width: 119,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Image(
                      image: AssetImage("assets/1.jpg"),
                      width: 119,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Image(
                      image: AssetImage("assets/3.jpg"),
                      width: 119,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Image(
                      image: AssetImage("assets/1.jpg"),
                      width: 119,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar_Widget(),
      ),
    );
  }
}
