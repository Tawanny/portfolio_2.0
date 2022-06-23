import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/hireme_card.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/RecentWork.dart';

class WhatMakesMeUnique extends StatelessWidget {
  const WhatMakesMeUnique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/network_mesh.jpg'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          SectionTitle(
            title: 'What makes me Unique?',
            subTitle: 'The Pecs of working with me!',
            color: scndColor,
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          uniquePecs(
                            context: context,
                            imageUrl: 'assets/svg/Questions-amico (1).svg',
                            title: 'Let me clear the Confusion',
                          ),

                        ],
                      ),
                      const SizedBox(height: 10),
                     Row(
                       children: [
                         uniquePecs(
                       context: context,
                       imageUrl: 'assets/svg/Market launch.svg',
                       title: 'Launch Your Success',
                     ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Spacer(),
                          uniquePecs(
                            context: context,
                          imageUrl: 'assets/svg/Wallet-amico.svg',
                          title: 'Tailor-made Payment Plan',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                const Expanded(
                  child: Text('$uniqueText $uniqueText2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                          height: 2)),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }

  Widget uniquePecs({BuildContext? context, String? imageUrl, String? title,}) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: SvgPicture.asset(imageUrl!),
        ),
        Text(
          title!,
          style: Theme.of(context!).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
                color: prColor,
              ),
        ),
      ],
    );
  }
}
