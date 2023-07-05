import 'package:flutter/material.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Yo Page Banako xaina",
          style: TextStyle(
            backgroundColor: Colors.red,
            color: Colors.yellow,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}
