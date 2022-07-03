import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/components/lets_talk_widget.dart';
import 'package:mutumbami_portfolio_2/sections/about/collabo.dart';

import '../../components/default_button.dart';
import '../../components/my_outline_button.dart';
import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'download_cv.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'How Can I Be of Service?',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    const LetsTalk(
                      text: 'Let\'s Talk',
                    ),



                  ],
                ),
              ),
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  aboutMeShort,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: kTextColor,
                      height: 2),
                ),
              )),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          const Collabo(),
          const DownloadCV(),
        ],
      ),
    );
  }
}
