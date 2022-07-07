import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerWidget({Key? key, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [buildDrawerItems(context)],
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 32, 16, 0),
      child: SingleChildScrollView(
        child: Column(
          children: DrawerItems.all
              .map((item) => ListTile(
                    onTap: () => onSelectedItem(item),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    leading: Icon(
                      item.icon,
                      color: prColor,
                    ),
                    title: Text(
                      item.title,
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
