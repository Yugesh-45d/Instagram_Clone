import 'package:flutter/material.dart';
import 'package:instagram/screens/main_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      home: MainPage(),
      theme: ThemeData(
        primaryColor: Colors.red.shade400,
      ),
    ),
  );
}