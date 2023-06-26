import 'package:flutter/material.dart';
import 'package:instagram/datas/personal_story.dart';
import 'package:instagram/models/personal_story_model.dart';

class Personal_Story_Widget extends StatelessWidget {
  const Personal_Story_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          ...PersonalStory_Data.map(
            (e) => Personal_Story_Model(
              name: e["name"],
              photo: e["photos"],
            ),
          ),
        ],
      ),
    );
  }
}
