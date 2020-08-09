import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  final User currentUser;
  final bool isAddStory;
  final bool isViewed;
  const StoryCard(
      {Key key,
      this.currentUser,
      this.story,
      this.isAddStory = false,
      this.isViewed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            width: 110,
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 1.6,
                child: BlurHash(hash: "L5H2EC=PM+yV0g-mq.wG9c010J}I"),
              ),
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
                height: double.infinity,
                width: 110,
                fit: BoxFit.cover,
              )),
          Container(
            height: double.infinity,
            width: 110,
            decoration: BoxDecoration(
              gradient: Palette.story,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: isAddStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  )
                : Container(
                    child: ProfileAvatar(
                    imageUrl: story.user.imageUrl,
                    isActive: true,
                    isViewed: isViewed,
                    hasBorder: true,
                  )),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              width: 80,
              child: isAddStory
                  ? Text(
                      "Tạo tin",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  : Text(
                      story.user.name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
