import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../utils/constants.dart';
import 'carousel.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    @required this.size,
  }) : super(key: key);

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size!.height * 0.7),
          width: double.infinity,
          height: size!.height * 0.2,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              RichText(
                text: TextSpan(
                  text:
                      'My mission is Leveraging Technology in a Creative way to help startUps, small and medium businesses \n',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                  children: [
                    TextSpan(
                      text: 'LAUNCH AND GROW ONLINE',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2),
              Text(
                'LAUNCH AND GROW ONLINE!',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
