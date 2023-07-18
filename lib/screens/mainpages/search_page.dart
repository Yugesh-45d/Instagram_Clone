import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/personal_post_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text(
    //       "Yo Page Banako xaina",
    //       style: TextStyle(
    //         backgroundColor: Colors.purple,
    //         color: Colors.redAccent,
    //         fontSize: 32,
    //       ),
    //     ),
    //   ],
    // );
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CupertinoSearchTextField(
              itemColor: Colors.black,
            ),
          ),
          PersonalPost_Widget(),
        ],
      ),
    );
  }
}
