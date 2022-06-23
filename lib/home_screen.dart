import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/sections/about/about_section.dart';
import 'package:mutumbami_portfolio_2/sections/contact/contact_section.dart';
import 'package:mutumbami_portfolio_2/sections/feedback/feedback_section.dart';
import 'package:mutumbami_portfolio_2/sections/recent_work/recent_work_section.dart';
import 'package:mutumbami_portfolio_2/sections/service/service_section.dart';
import 'package:mutumbami_portfolio_2/sections/topSection/top_section.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            const SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
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
