import 'package:flutter/material.dart';
import 'package:instagram/datas/personal_post.dart';
import 'package:instagram/models/personal_post_model.dart';

class PersonalPostWidget extends StatelessWidget {
  const PersonalPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...PersonalPost_Data.map(
          (e) => PersonalPost_Model(
            photo: e["photo"],
          ),
        ),
      ],
    );
  }
}
