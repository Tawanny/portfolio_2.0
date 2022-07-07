import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/components/rounded_button.dart';

import '../utils/constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'So what are you waiting for?',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: kDefaultPadding / 2),
                const Text(
                  hireMeText,
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: RoundedButton(
              height: 50,
              width: 180,
              icon: Image.asset('assets/images/hand.png'),
              text: 'Let\'s Work Together',
            ),
          ),
        ],
      ),
    );
  }
}
