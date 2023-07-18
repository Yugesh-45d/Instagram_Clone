import 'package:flutter/material.dart';
import 'package:instagram/screens/splash/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Colors.red.shade400,
      ),
    ),
  );
}
