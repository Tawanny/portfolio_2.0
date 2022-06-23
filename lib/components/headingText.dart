
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, this.title}) : super(key: key);
final String? title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title!,
      style: Theme.of(context).textTheme.headline4?.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
