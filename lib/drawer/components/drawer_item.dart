import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  const DrawerItem({required this.title, required this.icon});
}

class DrawerItems {
  static const home = DrawerItem(title: 'Home', icon: Ionicons.home_outline);
  static const services =
      DrawerItem(title: 'Services', icon: LineAwesomeIcons.tools);
  static const about =
      DrawerItem(title: 'About Me', icon: Ionicons.person_outline);
  static const projects =
      DrawerItem(title: 'Projects', icon: LineAwesomeIcons.project_diagram);

  static final List<DrawerItem> all = [home, services, about, projects];
}
