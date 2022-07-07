import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/components/rounded_button.dart';

import '../../utils/constants.dart';

class Collabo extends StatelessWidget {
  const Collabo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.8,
            child: ListTile(
              title: Text(
                'Are you A Developer with a great Idea looking for Collaboration?',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              subtitle: const Text(collaboText,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: kTextColor,
                      height: 2)),
              trailing: InkWell(
                onTap: () {},
                child: RoundedButton(
                  height: 50,
                  width: 180,
                  icon: Image.asset('assets/images/hand.png'),
                  text: 'Let\'s Work Together',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
