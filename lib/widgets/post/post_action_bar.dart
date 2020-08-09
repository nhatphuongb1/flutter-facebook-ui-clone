import 'package:flutter/material.dart';

class PostActionBar extends StatefulWidget {
  const PostActionBar({Key key}) : super(key: key);

  @override
  PostActionBarState createState() => PostActionBarState();
}

class PostActionBarState extends State<PostActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
