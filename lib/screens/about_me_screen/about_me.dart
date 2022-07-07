import 'package:flutter/material.dart';

import '../services_screen/components/header.dart';

class AboutMeScreen extends StatelessWidget {
  static const routeName = '/about_me';
  final VoidCallback openDrawer;

  const AboutMeScreen({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme txtTheme = theme.textTheme;
    var color = theme.colorScheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 0,
            title: Header(openDrawer: openDrawer),
          ),
          const SliverToBoxAdapter(
            child: Center(),
          ),
        ],
      ),
    );
  }
}
