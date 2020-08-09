import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool isViewed;
  final hasBorder;
  const ProfileAvatar(
      {Key key,
      @required this.imageUrl,
      this.isActive = false,
      this.isViewed = false,
      this.hasBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          if (hasBorder == true)
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      border: Border.all(
                          width: 2.2,
                          color: this.isViewed == false
                              ? Palette.facebookBlue
                              : Colors.grey[200],
                          style: BorderStyle.solid)),
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: Colors.white,
                    backgroundImage: CachedNetworkImageProvider(imageUrl),
                  ),
                )
              ],
            )
          else
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white,
                backgroundImage: CachedNetworkImageProvider(imageUrl),
              ),
            ),
          if (isActive == true)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.online,
                    border: Border.all(width: 2, color: Colors.white)),
              ),
            )
        ],
      ),
    );
  }
}
