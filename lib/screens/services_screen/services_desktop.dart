import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mutumbami_portfolio_2/models/Service.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/components/header.dart';

import '../../utils/constants.dart';

class ServicesDesktop extends StatelessWidget {
  final VoidCallback openDrawer;

  const ServicesDesktop({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    TextTheme txtTheme = theme.textTheme;
    var color = theme.colorScheme;
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 0,
            title: Header(openDrawer: openDrawer),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    padding: const EdgeInsets.only(
                        top: kIsWeb ? kDefaultPadding : 0),
                    color: kBgDarkColor,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: SizedBox(
                        width: 400,
                        height: 300,
                        child: TabBar(
                          indicatorColor: prColor,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            tabItem(
                              context: context,
                              icon: Ionicons.phone_portrait_outline,
                              title: 'Mobile App Development',
                            ),
                            tabItem(
                              context: context,
                              icon: Ionicons.tv_outline,
                              title: 'Web Design',
                            ),
                            tabItem(
                              context: context,
                              icon: Ionicons.easel_outline,
                              title: 'UI Design',
                            ),
                            tabItem(
                              context: context,
                              icon: Ionicons.laptop_outline,
                              title: 'Web App Development',
                            ),
                            tabItem(
                              context: context,
                              icon: Ionicons.desktop_outline,
                              title: 'Desktop App Development',
                            ),
                            tabItem(
                              context: context,
                              icon: LineAwesomeIcons.google_logo,
                              title: 'Google My Business',
                            ),
                            tabItem(
                              context: context,
                              icon: LineAwesomeIcons.line_chart,
                              title: 'SEO and analytics',
                            ),
                            tabItem(
                              context: context,
                              icon: Ionicons.bug_outline,
                              title: 'Site/App Maintenance',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: List.generate(
                        services.length,
                        (index) {
                          Service service = services[index];
                          return Center(
                            child: Text(service.shortDescriptiom!),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Tab tabItem({
    required BuildContext context,
    required IconData icon,
    required String title,
  }) {
    return Tab(
      height: 200,
      child: RotatedBox(
        quarterTurns: 3,
        child: ListTile(
          leading: Icon(
            icon,
            color: prColor,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
