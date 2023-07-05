import 'package:flutter/material.dart';
import 'package:instagram/datas/personal_post.dart';

class PersonalPost_Model extends StatelessWidget {
  final String photo;
  const PersonalPost_Model({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // addAutomaticKeepAlives: true,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemCount: PersonalPost_Data.length,
        itemBuilder: (context, index) {
          return Image(
            image: AssetImage(
              photo
            ),
          );
        });
    // return GridView.count(
    //   primary: false,
    //   crossAxisCount: 3,
    //   children: [
    //     // Image(
    //     //       image: AssetImage(
    //     //         photo,
    //     //       ),
    //     Image(
    //       image: AssetImage(
    //         photo,
    //       ),
    //       height: 100,
    //       width: 100,
    //     ),
    //   ],
    // );
  }
}
