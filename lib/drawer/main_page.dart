import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/drawer/components/drawer_widget.dart';
import 'package:mutumbami_portfolio_2/screens/about_me_screen/about_me.dart';
import 'package:mutumbami_portfolio_2/screens/home_screen.dart';
import 'package:mutumbami_portfolio_2/screens/projects_screen/projects_screen.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/services_screen.dart';

import 'components/drawer_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  DrawerItem item = DrawerItems.services;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();

    closeDrawer();
  }

  void openDrawer() {
    setState(() {
      xOffset = 230;
      yOffset = 150;
      scaleFactor = 0.6;
      isDrawerOpen = true;
    });
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildDrawer() {
    return SizedBox(
      width: 230,
      child: DrawerWidget(
        onSelectedItem: (item) {
          setState(() => this.item = item);
          closeDrawer();
        },
      ),
    );
  }

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;

          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }

          isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                isDrawerOpen ? 25 : 0,
              ),
              child: getDrawerPage(),
            ),
          ),
        ),
      ),
    );
  }

  getDrawerPage() {
    switch (item) {
      case DrawerItems.services:
        return ServicesScreen(openDrawer: openDrawer);
      case DrawerItems.projects:
        return ProjectsScreen(openDrawer: openDrawer);
      case DrawerItems.about:
        return AboutMeScreen(openDrawer: openDrawer);

      case DrawerItems.home:
      default:
        return HomeScreen(openDrawer: openDrawer);
    }
  }
}
