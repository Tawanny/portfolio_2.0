import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mutumbami_portfolio_2/components/rounded_button.dart';
import 'package:mutumbami_portfolio_2/drawer/components/drawer_menu_widget.dart';

import '../../../sections/topSection/top_section.dart';
import '../../../utils/constants.dart';
import '../../../utils/responsive.dart';
import '../../../web_menu/web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);
  final VoidCallback openDrawer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1232.0),
      child: Responsive.isMobile(context)
          ? Row(
              children: [
                DrawerMenuWidget(onClicked: openDrawer),
                const Spacer(),
                const Icon(
                  Ionicons.heart_half_outline,
                  color: prColor,
                  size: 40,
                ),
              ],
            )
          : Row(
              children: [
                const Icon(
                  Ionicons.heart_half_outline,
                  color: prColor,
                  size: 40,
                ),
                const Spacer(),
                WebMenu(openDrawer: openDrawer),
                const Spacer(),
                size.width > 750 ? const SocialMediaLinks() : const SizedBox(),
                size.width > 850
                    ? RoundedButton(
                        text: 'Let\'s Talk',
                        height: 35,
                        width: 100,
                      )
                    : const SizedBox(),
              ],
            ),
    );
  }
}
