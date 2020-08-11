import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostButtons extends StatefulWidget {
  @override
  _PostButtonsState createState() => _PostButtonsState();
}

class _PostButtonsState extends State<PostButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              child: Row(
            children: [
              Container(
                  child: IconButton(
                      icon: Icon(MdiIcons.thumbUpOutline), onPressed: null)),
              Container(child: Text("Thích")),
            ],
          )),
          Container(
              child: Row(
            children: [
              Container(
                  child: IconButton(
                      icon: Icon(MdiIcons.commentOutline), onPressed: null)),
              Container(child: Text("Bình luận")),
            ],
          )),
          Container(
              child: Row(
            children: [
              Container(
                  child: IconButton(
                      icon: Icon(MdiIcons.shareOutline), onPressed: null)),
              Container(child: Text("Chia sẻ")),
            ],
          )),
        ],
      ),
    );
  }
}
