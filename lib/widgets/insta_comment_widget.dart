import 'package:flutter/material.dart';

class InstaComment extends StatefulWidget {
  const InstaComment({super.key});

  @override
  State<InstaComment> createState() => _InstaCommentState();
}

class _InstaCommentState extends State<InstaComment> {
  bool liked = true;
  int likeCounter = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 496,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: ListView(
        children: [
          Icon(
            Icons.horizontal_rule_rounded,
            size: 56,
            color: Colors.grey,
          ),
          Text(
            "Comments",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                "assets/1.jpg",
              ),
            ),
            title: Row(
              children: [
                Text(
                  "john_snow",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "5m",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              "Adventure is all about gaining new experiences and meeting new peoples and sharing thoughts with each other.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            trailing: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      liked = !liked;
                      // likeCounter++;
                      if (liked == false) {
                        likeCounter++;
                      } else {
                        likeCounter--;
                      }
                    });
                  },
                  child: Container(
                      child: liked
                          ? Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "$likeCounter",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
