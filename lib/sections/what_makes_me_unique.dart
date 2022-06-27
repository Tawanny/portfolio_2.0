import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mutumbami_portfolio_2/models/unique_model.dart';
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
        // image: const DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage('assets/images/tech_bg.jpg'),
        // ),
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
            height: 300,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: uniqueItems.length,
                      itemBuilder: ((context, index){
                        UniqueItem item = uniqueItems[index];
                        return  ExpansionTile(
                          title: Text(
                            item.title!,
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: scndColor,
                            ),
                          ),
                          children:  [
                            Text(
                              item.subtitle!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      }),
                  ),),
                Expanded(
                  child:
                SvgPicture.asset('assets/svg/Mobile UX-bro.svg'),
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
          height: 100,
          width: 100,
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
