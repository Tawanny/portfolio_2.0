import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../utils/constants.dart';

class IamCarousel extends StatelessWidget {
  const IamCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Text(
          'Freelancing',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white,
              ),
          textAlign: TextAlign.right,
        ),
        Container(
          width: 230,
          alignment: Alignment.centerLeft,
          child: CarouselSlider(
            items: [
              'UI Designer',
              'Web Designer',
              'Web Developer',
              'Wix Developer',
              'Software Developer',
              'Flutter Developer',
            ].map((e) {
              return Text(
                e,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: prColor,
                    ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 50,
              viewportFraction: 1,
              autoPlay: true,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
