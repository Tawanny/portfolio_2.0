import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mutumbami_portfolio_2/components/lets_talk_widget.dart';
import 'package:mutumbami_portfolio_2/models/unique_model.dart';
import '../../components/hireme_card.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/RecentWork.dart';

class WhatMakesMeUnique extends StatefulWidget {
  const WhatMakesMeUnique({Key? key}) : super(key: key);

  @override
  State<WhatMakesMeUnique> createState() => _WhatMakesMeUniqueState();
}

class _WhatMakesMeUniqueState extends State<WhatMakesMeUnique> {
  UniqueKey? expTileKey;
  bool isExpanded = false;

  void expandTile() {
    setState(() {
      isExpanded = true;
      expTileKey = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      expTileKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
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
                    //scrollDirection: Axis.horizontal,
                    itemCount: uniqueItems.length,
                    itemBuilder: ((context, index) {
                      UniqueItem item = uniqueItems[index];
                      return Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: SizedBox(
                          child: ExpansionTile(
                            tilePadding: const EdgeInsets.symmetric(vertical: 5),
                            childrenPadding: const EdgeInsets.all(8),
                            key: expTileKey,
                            initiallyExpanded: isExpanded,
                            onExpansionChanged: (isExpanded) {},
                            leading: Image.asset(item.iconUrl!),
                            title: Text(
                              item.title!,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: scndColor,
                                  ),
                            ),
                            children: [
                              Text(
                                item.subtitle!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kTextColor,
                                  height: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                        child: SvgPicture.asset(
                          'assets/svg/Mobile UX-bro.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
          const SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
