import 'package:flutter/material.dart';

import '../../components/rounded_button.dart';
import '../../utils/constants.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: ListTile(
        title: Text(
          'Not Convinced yet? ',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: const Text(
            'You can find out more about me in the About Me Section or you can just download my CV',
            style: TextStyle(
                fontWeight: FontWeight.w200, color: kTextColor, height: 2)),
        trailing: InkWell(
          onTap: () {},
          child: RoundedButton(
            height: 50,
            width: 180,
            color: const Color(0xFFE8F0F9),
            icon: Image.asset('assets/images/download.png'),
            text: 'Download CV',
            textColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
