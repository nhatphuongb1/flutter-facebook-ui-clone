import 'package:flutter/material.dart';

import '../../config/palette.dart';
import '../../util/constants.dart';

class PostStatus extends StatefulWidget {
  @override
  _PostStatusState createState() => _PostStatusState();
}

class _PostStatusState extends State<PostStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Palette.facebookBlue, shape: BoxShape.circle),
                      child: Icon(
                        Icons.thumb_up,
                        size: 10,
                        color: Colors.white,
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text('12.508'))
                ],
              )),
          Container(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        '443 bình luận',
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        Constants.SYMBOL_MIDLE_DOT,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        '1.032 lượt chia sẻ',
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
