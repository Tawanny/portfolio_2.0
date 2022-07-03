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
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              toolsIcon(
                context: context,
                iconUrl: 'assets/images/flutter.png',
                name: 'Flutter',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/dart.png',
                name: 'Dart',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/figma.png',
                name: 'Figma',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/firebase.png',
                name: 'Firebase',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/firestore.png',
                name: 'Firestore',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/github.png',
                name: 'Github',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/google_cloud.png',
                name: 'Google Cloud',
              ),
              toolsIcon(
                context: context,
                iconUrl: 'assets/images/wix.png',
                name: 'Wix',
              ),

            ],
          ),



        ],
      ),
    );
  }

  Widget toolsIcon({BuildContext? context, String? iconUrl, String? name}) {
    return Padding(
      padding: const EdgeInsets.all( 20.0),
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(iconUrl!),
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name!,
              style: Theme.of(context!).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
