import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/widgets/responsive.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/widgets.dart';
import 'screens.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
            appBar: Responsive.isDesktop(context)
                ? PreferredSize(
                    preferredSize: Size(screenSize.width, 100),
                    child: CustomAppBar(
                        currentUser: currentUser,
                        icons: _icons,
                        selectedIndex: _selectedIndex,
                        onTap: (index) =>
                            setState(() => _selectedIndex = index)),
                  )
                : null,
            body: IndexedStack(
              index: _selectedIndex,
              children: _screens,
            ),
            bottomNavigationBar: !Responsive.isDesktop(context)
                ? Container(
                    constraints: BoxConstraints(minWidth: 200, maxWidth: 300),
                    color: Colors.white,
                    child: CustomTabBar(
                      icons: _icons,
                      selectedIndex: _selectedIndex,
                      onTap: (index) => setState(() => _selectedIndex = index),
                    ),
                  )
                : SizedBox.shrink()));
  }
}
