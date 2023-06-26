// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/widgets/personal_story_widget.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //---------------Top wala username and icons section----------
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "john_snow",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      size: 32,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Icon(
                      Icons.menu,
                      size: 32,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          //----------------------Profile Image and followers haru wala section-------------------------
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/7.jpg"),
                  radius: 40,
                ),
                Column(
                  children: [
                    Text(
                      "5",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Posts",
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "668",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Followers",
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "50",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Following",
                    ),
                  ],
                ),
              ],
            ),
          ),
          //----------------------Name and bio Section---------------
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "John Snow",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  "King in the north.",
                ),
              ],
            ),
          ),
          //-------------------------Edit, Share Profile Button Section------------
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size.fromWidth(128),
                    backgroundColor: Color(0xffebebeb),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Edit profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size.fromWidth(136),
                    backgroundColor: Color(0xffebebeb),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Share profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_add_outlined,
                  ),
                ),
              ],
            ),
          ),
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
    );
  }
}
