import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Yo Page Banako xaina",
          style: TextStyle(
            backgroundColor: Colors.purple,
            color: Colors.redAccent,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}
