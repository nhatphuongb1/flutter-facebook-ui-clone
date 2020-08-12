import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/user_model.dart';

class ContactsList extends StatefulWidget {
  ContactsList({Key key, this.users}) : super(key: key);
  final List<User> users;
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: ListView(scrollDirection: Axis.vertical, children: [
        Row(
          children: [
            Expanded(
              child: Text("Người liên hệ:"),
            ),
          ],
        ),
      ]),
    );
  }
}
