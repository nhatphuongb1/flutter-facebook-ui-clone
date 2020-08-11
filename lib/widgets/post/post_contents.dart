import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostContents extends StatelessWidget {
  const PostContents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          child: Text(
              "This hero is playing a critical role in Kenya’s preparations to tackle COVID-19 by scaling up medical oxygen supplies that will be needed to keep the most critically ill patients alive."),
        ),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(4),
            child: InkWell(
              child: Text(
                "Xem bản dịch",
                style: TextStyle(color: Colors.grey),
              ),
            )),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(4),
            child: CachedNetworkImage(
              imageUrl:
                  "https://media.gatesnotes.com/-/media/Images/Articles/Health/Heroes-in-the-Field-Dr-Bernard-Olayo/hitf-bernard-olayo_2020_article-hero_1200x564_01.ashx",
              width: double.infinity,
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}
