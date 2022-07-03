import 'package:mutumbami_portfolio_2/constants.dart';

class UniqueItem {
  String? title, subtitle, iconUrl;
  bool isExpanded;

  UniqueItem({this.title, this.subtitle, this.iconUrl, this.isExpanded = false,});
}

List<UniqueItem> uniqueItems = [
  UniqueItem(
    title: 'Start Up First',
    subtitle: startupShortText,
    iconUrl: 'assets/gif/one.gif',

  ),
  UniqueItem(
    title: 'Flexible Payment Plans',
    subtitle: flexiblePaymentsShortText,
    iconUrl: 'assets/gif/two.gif',
  ),
  UniqueItem(
    title: 'I am Genuinely here to help!',
    subtitle: hereToHelpText,
    iconUrl: 'assets/gif/three.gif',
  ),
];
