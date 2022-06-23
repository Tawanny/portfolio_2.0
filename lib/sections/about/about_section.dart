import 'package:flutter/material.dart';
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
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/gif/talk to me.gif',
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(color: prColor),
                      )),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Let\'s Talk',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: prColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
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
