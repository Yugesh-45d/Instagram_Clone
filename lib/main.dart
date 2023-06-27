import 'package:flutter/material.dart';
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/widgets/nav_bar_widget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.red.shade400,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Insta_HomePage(),
        bottomNavigationBar: NavBar_Widget(),
      ),
    );
  }
}

//Personal_Post Widget banauna baki xa, photo lai grid ma hale paxi matra yo banaune

