import 'package:flutter/material.dart';
import 'package:instagram/datas/story_data.dart';
import 'package:instagram/models/story_model.dart';

class Insta_Story_Widget extends StatelessWidget {
  const Insta_Story_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/5.jpg"),
                    ),
                    // Icon(
                    //   Icons.add,
                    //   color: Colors.white,
                    // ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Stack(alignment: Alignment.center, children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Your story"),
              ],
            ),
          ),

          //--------------------------------------------------Yo kina milena??---------------------------------------
          // ListView.builder(
          //     physics: NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: StoryData.length,
          //     itemBuilder: (context, index) {
          //       var story = StoryData[index];

          //       return Story_Model(
          //         username: story["username"],
          //         photo: story["photo"],
          //       );
          //     }),

          ...StoryData.map(
            (e) => Story_Model(
              username: e["username"],
              photos: e["photo"],
            ),
          ).toList(),
        ],
      ),
    );
    // ---------------------Stories Section ends------------------------------------,
  }
}
