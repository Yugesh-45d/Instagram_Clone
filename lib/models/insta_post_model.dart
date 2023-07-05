import 'package:flutter/material.dart';

class InstaPost_model extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(profile_pic),
            ),
          ),
          title: Text(
            username,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            location,
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
          upload_pic,
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
                  Icon(
                    Icons.favorite_outline_rounded,
                    size: 28,
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
              child: Icon(
                Icons.bookmark_border_sharp,
                size: 28,
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
                upload_date,
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
