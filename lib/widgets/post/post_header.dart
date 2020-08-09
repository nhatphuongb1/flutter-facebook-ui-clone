import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/util/constants.dart';

import '../widgets.dart';

class PostHeader extends StatelessWidget {
  final Post post;

  const PostHeader({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ProfileAvatar(
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg"),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Text("Bill Gates",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4, bottom: 2),
                        child: Icon(
                          Icons.verified_user,
                          color: Palette.facebookBlue,
                          size: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Text(
                          "12 phút",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            Constants.SYMBOL_MIDLE_DOT,
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(Icons.public, size: 12, color: Colors.black54)
                    ],
                  )
                ],
              )
            ],
          ),
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.grey),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
