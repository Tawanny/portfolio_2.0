import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/components/header.dart';
import 'package:mutumbami_portfolio_2/sections/about/about_section.dart';
import 'package:mutumbami_portfolio_2/sections/contact/contact_section.dart';
import 'package:mutumbami_portfolio_2/sections/service/service_section.dart';
import 'package:mutumbami_portfolio_2/sections/topSection/top_section.dart';
import 'package:mutumbami_portfolio_2/sections/what_makes_me_unique.dart';

import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  final VoidCallback openDrawer;

  const HomeScreen({Key? key, required this.openDrawer}) : super(key: key);

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
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TopSection(),
                  const SizedBox(height: kDefaultPadding * 2),
                  const AboutSection(),
                  const ServiceSection(),
                  const WhatMakesMeUnique(),

                  // RecentWorkSection(),
                  //  FeedbackSection(),
                  const SizedBox(height: kDefaultPadding),
                  ContactSection(),
                  // This SizeBox just for demo
                  // SizedBox(
                  //   height: 500,
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
