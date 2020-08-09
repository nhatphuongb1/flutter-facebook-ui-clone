import 'package:flutter/foundation.dart';

import 'models.dart';

class Story {
  User user;
  String imageUrl;
  bool isViewed;
  String blurHash;

  Story({
    @required this.user,
    @required this.imageUrl,
    this.isViewed,
    this.blurHash
  });
}
