import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/sections/service/components/all_comp_services.dart';

import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/Service.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            color: prColor,
            title: 'My Services',
            subTitle: 'My Super Powers',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          ),
          const SizedBox(height: 60),
          const AllCompServices(),
        ],
      ),
    );
  }
}
