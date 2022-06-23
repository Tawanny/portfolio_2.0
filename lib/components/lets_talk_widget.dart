import 'package:flutter/material.dart';

import '../constants.dart';

class LetsTalk extends StatelessWidget {
  const LetsTalk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}