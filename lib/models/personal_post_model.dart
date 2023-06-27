import 'package:flutter/material.dart';

class PersonalPost_Model extends StatelessWidget {
  final String photo;
  const PersonalPost_Model({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Image(
        image: AssetImage(photo),
        width: 119,
      ),
    );
  }
}
