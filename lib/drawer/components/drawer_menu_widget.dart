import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../utils/constants.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key, required this.onClicked}) : super(key: key);

  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClicked,
      icon: const Icon(
        Ionicons.menu,
        color: prColor,
      ),
    );
  }
}
