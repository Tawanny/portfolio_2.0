import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mutumbami_portfolio_2/drawer/components/drawer_menu_widget.dart';
import 'package:mutumbami_portfolio_2/utils/constants.dart';
import 'package:mutumbami_portfolio_2/models/Service.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/components/service_details.dart';

import '../../../utils/responsive.dart';

class ListOfServices extends StatefulWidget {
  const ListOfServices({Key? key, required this.openDrawer}) : super(key: key);
  final VoidCallback openDrawer;

  @override
  State<ListOfServices> createState() => _ListOfServicesState();
}

class _ListOfServicesState extends State<ListOfServices> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgLightColor,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Responsive.isMobile(context)
                    ? Row(
                        children: [
                          DrawerMenuWidget(onClicked: widget.openDrawer),
                          const SizedBox(width: 15),
                          Text(
                            'Services',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      )
                    : Text(
                        'Services',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                const SizedBox(height: kDefaultPadding * 2),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      Service service = services[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ServiceDetails(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          tileColor: kBgDarkColor,
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(
                              LineAwesomeIcons.servicestack,
                              color: prColor,
                            ),
                          ),
                          title: Text(
                            service.title!,
                            style: Theme.of(context).textTheme.button,
                          ),
                          trailing: const Icon(Icons.chevron_right),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
