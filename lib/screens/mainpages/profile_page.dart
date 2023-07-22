// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/widgets/personal_post_widget.dart';
import 'package:instagram/widgets/profile_page_widget.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page>
    with TickerProviderStateMixin {
  late final _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Profile_Page_Widget(),
        TabBar(
          controller: _tabcontroller,
          tabs: [
            Tab(
              icon: Icon(
                Icons.grid_on_sharp,
                size: 28,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_box_outlined,
                size: 28,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: _tabcontroller, children: [
            SingleChildScrollView(child: PersonalPost_Widget()),
            SingleChildScrollView(child: PersonalPost_Widget()),
          ]),
        ),
      ],
    );
  }
}
