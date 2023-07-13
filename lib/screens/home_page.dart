import 'package:flutter/material.dart';
import 'package:instagram/widgets/insta_post_widget.dart';
import 'package:instagram/widgets/story_widget.dart';

class Insta_HomePage extends StatelessWidget {
  const Insta_HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // controller: ScrollController(),
      // physics: NeverScrollableScrollPhysics(parent: ScrollPhysics()),
      child: Column(
        children: [
          //---------------------- Instagram and icons sections row begins------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/2.png"),
                      height: 64,
                      width: 120,
                    ),
                    // Icon(Icons.arrow_drop_down),
                    Image.asset(
                      "assets/dropdown.png",
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_outline_rounded,
                      size: 28,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      child: Image.asset(
                        "assets/messenger.png",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //---------------------Top Instagram and icons row sections ends------------------
          Insta_Story_Widget(),
          InstaPost_widget(),
          //----------------------------------------------------------------------------
        ],
      ),
    );
  }
}
