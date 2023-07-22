import 'package:flutter/material.dart';
import 'package:instagram/widgets/personal_post_widget.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Just Practice Only",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 32,
                  ),
                ),
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              // Expanded(
              //   child: TabBarView(children: [
              //     Icon(
              //       Icons.abc,
              //     ),
              //     Icon(
              //       Icons.abc,
              //     ),
              //   ]),
              // ),
              Expanded(
                child: TabBarView(children: [
                  PersonalPost_Widget(),
                  // Container(
                  //   color: Colors.red,
                  // ),
                  Container(
                    color: Colors.red,
                  ),
                ]),
              ),
              // ExpansionTile(
              //   leading: Icon(Icons.linear_scale_outlined),
              //   title: Text("View Replies"),
              //   trailing: Text(""),
              //   children: [
              //     Text("Ram"),
              //     Text("Hari"),
              //     Text("Sita"),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
