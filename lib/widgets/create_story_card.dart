import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class CreateStoryCard extends StatelessWidget {
  final Story story;
  final User currentUser;
  final bool isAddStory;
  const CreateStoryCard(
      {Key key, this.currentUser, this.story, this.isAddStory = false})
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
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: CachedNetworkImage(
                imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
                height: 110,
                width: 110,
                fit: BoxFit.cover,
              )),
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              gradient: Palette.story,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
                width: 80,
                child: Text(
                  "Tạo tin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
          ),
          Positioned(
              bottom: 30,
              left: 36,
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(
                    Icons.add_circle,
                    color: Palette.facebookBlue,
                    size: 36,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
