import 'package:mutumbami_portfolio_2/constants.dart';

class UniqueItem{
  String? title, subtitle;

  UniqueItem({this.title, this.subtitle,});
}

List<UniqueItem> uniqueItems = [
  UniqueItem(title: 'Start Up First', subtitle: startupFirstText,),
  UniqueItem(title: 'Flexible Payment Plans', subtitle: flexiblePaymentsText,),
];