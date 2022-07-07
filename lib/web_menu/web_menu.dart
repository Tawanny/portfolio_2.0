import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mutumbami_portfolio_2/screens/about_me_screen/about_me.dart';
import 'package:mutumbami_portfolio_2/screens/projects_screen/projects_screen.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/services_screen.dart';
import 'package:mutumbami_portfolio_2/web_menu/controller/web_menu_controller.dart';

import '../screens/home_screen.dart';
import '../utils/constants.dart';
import 'components/web_menu_item.dart';

class WebMenu extends StatelessWidget {
  WebMenu({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  final VoidCallback openDrawer;
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Obx(
        () => Row(
          children: List.generate(_controller.menuItems.length, (index) {
            String title = _controller.menuItems[index];
            return WebMenuItem(
              title: title,
              isActive: index == _controller.selectedIndex,
              onPressed: () {
                _controller.setMenuIndex(index);
                switch (title) {
                  case 'Home':
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            HomeScreen(openDrawer: openDrawer),
                      ),
                    );
                    break;
                  case 'Services':
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            ServicesScreen(openDrawer: openDrawer),
                      ),
                    );
                    break;
                  case 'About Me':
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            AboutMeScreen(openDrawer: openDrawer),
                      ),
                    );
                    break;
                  case 'Projects':
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            ProjectsScreen(openDrawer: openDrawer),
                      ),
                    );
                }
              },
            );
          }),
        ),
      ),
    );
  }
}
