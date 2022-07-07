import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/components/list_of_services.dart';
import 'package:mutumbami_portfolio_2/screens/services_screen/services_desktop.dart';

import '../../utils/responsive.dart';

class ServicesScreen extends StatelessWidget {
  static const routeName = '/services_screen';
  final VoidCallback openDrawer;

  const ServicesScreen({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: ListOfServices(openDrawer: openDrawer),
        tablet: ServicesDesktop(openDrawer: openDrawer),
        desktop: ServicesDesktop(openDrawer: openDrawer),
      ),
    );
  }
}
