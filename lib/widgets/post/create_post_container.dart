import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        color: Colors.white60,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ProfileAvatar(
                    imageUrl: currentUser.imageUrl,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Bạn đang nghĩ gì?",
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
            Divider(
              height: 10,
              thickness: 0.5,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: FlatButton.icon(
                        onPressed: () => print('Live'),
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.red,
                          size: 18,
                        ),
                        label: AutoSizeText(
                          'Phát trực tiếp',
                          style: TextStyle(fontSize: 10),
                        )),
                  ),
                  VerticalDivider(
                    width: 2,
                  ),
                  Container(
                    child: FlatButton.icon(
                        onPressed: () => print('Photo'),
                        icon: Icon(
                          Icons.photo_library,
                          color: Colors.green,
                          size: 18,
                        ),
                        label: AutoSizeText(
                          'Ảnh',
                          style: TextStyle(fontSize: 10),
                        )),
                  ),
                  VerticalDivider(
                    width: 2,
                  ),
                  Container(
                    child: FlatButton.icon(
                        onPressed: () => print('Room'),
                        icon: Icon(
                          Icons.video_call,
                          color: Colors.purple,
                          size: 18,
                        ),
                        label: AutoSizeText(
                          'Phòng gặp mặt',
                          style: TextStyle(fontSize: 10),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
