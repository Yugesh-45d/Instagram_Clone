import 'package:flutter/material.dart';

class InstaPost_model extends StatefulWidget {
  final String profile_pic;
  final String username;
  final String location;
  final String upload_pic;
  final String upload_date;

  const InstaPost_model({
    Key? key,
    required this.profile_pic,
    required this.username,
    required this.location,
    required this.upload_pic,
    required this.upload_date,
  }) : super(key: key);

  @override
  State<InstaPost_model> createState() => _InstaPost_modelState();
}

class _InstaPost_modelState extends State<InstaPost_model> {
  bool bookmarked = true;
  bool liked = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(widget.profile_pic),
            ),
          ),
          title: Row(
            children: [
              Text(
                widget.username,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/verification.png",
                height: 16,
                width: 16,
              ),
            ],
          ),
          subtitle: Text(
            widget.location,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              size: 24,
              color: Colors.black,
            ),
          ),
        ),
        //------------------------Name and avatar wala row ends-----------------------
        //---------------------------------------------------------------------------
        //------------------------Main Image Begins----------------------------------
        Image.asset(
          widget.upload_pic,
          height: 320,
          fit: BoxFit.fill,
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
                top: 12,
                bottom: 8,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                    child: Container(
                      child: liked
                          ? Icon(
                              Icons.favorite_outline_rounded,
                              size: 32,
                            )
                          : Icon(
                              Icons.favorite,
                              size: 32,
                              color: Colors.red,
                            ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Icon(
                    Icons.mode_comment_outlined,
                    size: 26,
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bookmarked = !bookmarked;
                  });
                },
                child: bookmarked
                    ? Image.asset(
                        "assets/bookmark.png",
                        height: 28,
                        width: 28,
                      )
                    : Image.asset(
                        "assets/bookmark_fill.png",
                        height: 28,
                        width: 28,
                      ),
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
                widget.upload_date,
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
      ],
    );
  }
}
