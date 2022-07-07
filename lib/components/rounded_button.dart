import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/utils/extensions.dart';

import '../utils/constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    Key? key,
    this.text,
    this.icon = const SizedBox(),
    this.width = 150,
    this.height = 50,
    this.borderRadius = 10,
    this.color = prColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String? text;
  Widget? icon;
  double? width;
  double? height;
  double borderRadius;
  Color color, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        children: [
          const Spacer(),
          icon!,
          const SizedBox(width: 6),
          Text(
            text!,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const Spacer(),
        ],
      ),
    ).addNeumorphism();
  }
}
