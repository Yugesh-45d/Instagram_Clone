// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/widgets/personal_post_widget.dart';
import 'package:instagram/widgets/profile_page_widget.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Profile_Page_Widget(),
          PersonalPost_Widget(),
        ],
      ),
    );
  }
}
