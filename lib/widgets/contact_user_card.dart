import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';

import 'user_card.dart';

class ContactUserCard extends StatelessWidget {
  const ContactUserCard({Key key, @required this.user, this.isOnline = false})
      : super(key: key);

  final bool isOnline;
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [UserCard(user: user)],
      ),
    );
  }
}
