import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Palette.scafford),
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
  }
}
