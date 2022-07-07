import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return prColor;
    } else if (!widget.isActive & _isHover) {
      return prColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 3,
            ),
          ),
        ),
        child: Text(
          widget.title,
          style: Theme
              .of(context)
              .textTheme
              .subtitle1!
              .copyWith(
            fontWeight:
            widget.isActive ? FontWeight.w600 : FontWeight.w200,
          ),
        ),
      ),

    );
  }
}
