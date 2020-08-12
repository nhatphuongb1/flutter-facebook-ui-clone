import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/screens/screens.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Responsive(
              mobile:
                  HomeScreenMobile(scrollController: _trackingScrollController),
              desktop: HomeScreenDesktop(
                  scrollController: _trackingScrollController),
            ),
          ),
        ),
      ),
    );
  }
}
