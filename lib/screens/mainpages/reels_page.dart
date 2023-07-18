import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Yo Page Banako xaina",
          style: TextStyle(
            backgroundColor: Colors.pink,
            color: Colors.green,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}