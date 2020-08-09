import 'package:flutter/material.dart';

class PostStatus extends StatefulWidget {
  @override
  _PostStatusState createState() => _PostStatusState();
}

class _PostStatusState extends State<PostStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              child: Row(
            children: [Icon(Icons.thumb_up)],
          ))
        ],
      ),
    );
  }
}
