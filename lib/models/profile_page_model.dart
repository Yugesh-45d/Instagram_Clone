import 'package:flutter/material.dart';

class Profile_Page_Model extends StatelessWidget {
  final String profile_pic;
  final String username;
  final String name;
  final String bio;
  final String posts;
  final String followers;
  final String following;

  const Profile_Page_Model({super.key, required this.profile_pic, required this.username, required this.name, required this.posts, required this.followers, required this.following, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    username,
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
                backgroundImage: AssetImage(profile_pic),
                radius: 40,
              ),
              Column(
                children: [
                  Text(
                    posts,
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
                    followers,
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
                    following,
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
                    name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                bio,
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
      ],
    );
  }
}
