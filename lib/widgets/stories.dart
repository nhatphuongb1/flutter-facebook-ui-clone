import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key key, @required this.currentUser, @required this.stories})
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
        color: isDesktop ? null : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                width: double.infinity,
                height: 180,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1 + stories.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: CreateStoryCard(
                            currentUser: currentUser,
                            isAddStory: true,
                          ),
                        );
                      }

                      final story = stories[index - 1];

                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: StoryCard(
                          story: story,
                        ),
                      );
                    })),
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 40,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Xem tất cả tin",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                    ))),
          ],
        ),
      ),
    );
  }
}
