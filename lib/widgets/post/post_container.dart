import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'post.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [PostHeader(post: post), PostContents(), PostActionBar()],
      ),
    );
  }
}
