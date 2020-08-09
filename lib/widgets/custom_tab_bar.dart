import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border:
              Border(top: BorderSide(color: Palette.facebookBlue, width: 3.0))),
      tabs: [],
    );
  }
}
