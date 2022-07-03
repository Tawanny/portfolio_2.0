import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: kDefaultPadding/2),
            Image.asset(
              services[widget.index].icon!,
              height: 40,
            ),
            const SizedBox(height: kDefaultPadding/2),
            Text(
              services[widget.index].title!,
              maxLines: 2,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
            ),
            const SizedBox(height: kDefaultPadding/3),
            Text(
              services[widget.index].shortDescriptiom!,
              maxLines: 3,
              style: const TextStyle(
                fontWeight: FontWeight.w200,
                color: kTextColor,
                height: 2,
              ),

            ),

          ],
        ),
      ),
    );
  }
}
