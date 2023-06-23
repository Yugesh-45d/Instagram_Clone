import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F7FC),
        body: Column(
          children: [
            //---------------------- Instagram and icons sections row begins------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image(
                    image: AssetImage("assets/2.png"),
                    height: 64,
                    width: 120,
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
                      Icon(
                        Icons.messenger_outline_rounded,
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //---------------------Top Instagram and icons row sections ends------------------
            // -----------------------------------------------------------------------------
            // ---------------------Stories Section Begins---------------------------------
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/5.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Your Story"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/8.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("arya_stark"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/10.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("sansa_stark"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/9.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("khaleesi"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage("assets/11.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("dragon"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/1.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("john"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/8.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("arya_stark"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/10.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("sansa_stark"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/9.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("khaleesi"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 16),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage("assets/3.jpg"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("John"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ---------------------Stories Section ends------------------------------------
            //----------------------------------------------------------------------------
            //------------------------Name and avatar wala row begins-----------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage("assets/5.jpg"),
                      ),
                    ),
                    Text(
                      "john_snow",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(
                    Icons.more_vert_outlined,
                    size: 28,
                  ),
                ),
              ],
            ),
            //------------------------Name and avatar wala row ends-----------------------
            //----------------------------------------------------------------------------
            //------------------------Main Image Begins----------------------------------
            Image(
              image: AssetImage("assets/7.jpg"),
              height: 336,
            ),
            // ----------------------Main Image ends-------------------------------------
            //------------------------------------------------------------------------------
            //------------------------Like,Comment, Share, Bookmark Section Begins------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_outline_rounded,
                        size: 28,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Icon(
                        Icons.mode_comment_outlined,
                        size: 28,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Icon(
                        Icons.send_rounded,
                        size: 28,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Icon(
                    Icons.bookmark_border_sharp,
                    size: 32,
                  ),
                ),
              ],
            ),
            //------------------------Like,Comment, Share, Bookmark Section Ends------------
            //------------------------------------------------------------------------------
            //------------------------Liked by details text begins-----------------------------
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text("Liked by "),
                  Text(
                    "arya_stark ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "and ",
                  ),
                  Text(
                    "others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //------------------------Liked by details text ends-----------------------------
            //----------------------------------------------------------------------------------
            //--------------------------Date Section Begins-----------------------------------
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 4),
              child: Row(
                children: [
                  Text(
                    "NOV 3",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            //----------------------------Date Section Ends-------------------------------------
            //---------------------------------------------------------------------------------
            //---------------------------Nav Bar Begins-------------------------------------
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_filled,
                    size: 32,
                  ),
                  Icon(
                    Icons.search_outlined,
                    size: 34,
                  ),
                  Icon(
                    Icons.add_box_outlined,
                    size: 32,
                  ),
                  Icon(
                    Icons.video_library_outlined,
                    size: 32,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(
                      "assets/5.jpg",
                    ),
                  ),
                ],
              ),
            ),
            //---------------------------Nav Bar Ends-------------------------------------
          ],
        ),
      ),
    );
  }
}
