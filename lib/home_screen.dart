import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/components/lets_talk_widget.dart';
import 'package:mutumbami_portfolio_2/sections/about/about_section.dart';
import 'package:mutumbami_portfolio_2/sections/contact/contact_section.dart';
import 'package:mutumbami_portfolio_2/sections/feedback/feedback_section.dart';
import 'package:mutumbami_portfolio_2/sections/service/service_section.dart';
import 'package:mutumbami_portfolio_2/sections/topSection/top_section.dart';
import 'package:mutumbami_portfolio_2/sections/what_makes_me_unique.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
    );
  }
}
