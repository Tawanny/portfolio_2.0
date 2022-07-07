import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../../utils/constants.dart';

class ServicesMenu extends StatefulWidget {
  const ServicesMenu({Key? key}) : super(key: key);

  @override
  State<ServicesMenu> createState() => _ServicesMenuState();
}

class _ServicesMenuState extends State<ServicesMenu> {
  final List<String> _list = [
    'Mobile App Development',
    'Web Design',
    'UI Design',
    'Web App Development',
    'Desktop App Development',
    'Google My Business',
    'SEO and Analytics',
    'Site/App Maintainance',
  ];

  final List<GlobalKey> _keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  int checkIndex = 0;

  @override
  void initState() {
    super.initState();
    int checkIndex = _list.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Stack(
        children: [
          Container(
            width: 200,
            decoration: const BoxDecoration(
              color: kBgLightColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildMenu(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildMenu() {
    List<Widget> _itemList = [];

    _itemList.add(
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Text(
          'Services',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
    for (int i = 0; i < _list.length; i++) {
      _itemList.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              indexChecked(i);
            },
            child: VerticalText(
              title: _list[i],
              key: _keys[i],
              checked: checkIndex == i,
            ),
          ),
        ),
      );
    }
    return _itemList;
  }

  void indexChecked(int i) {
    if (checkIndex == i) return;
    setState(() {
      checkIndex = i;
    });
  }
}

class VerticalText extends StatelessWidget {
  const VerticalText(
      {required this.title, required this.checked, required this.key})
      : super(key: key);
  final String title;
  final bool checked;
  final GlobalKey key;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.button!.copyWith(
            color: checked ? scndColor : kTextColor,
          ),
    );
  }
}
