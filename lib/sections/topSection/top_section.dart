import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/constants.dart';
import 'package:mutumbami_portfolio_2/sections/topSection/components/glass_content.dart';

import '../../components/my_outline_button.dart';
import '../../components/rounded_button.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
          width: double.infinity,
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background.jpg"),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
          width: double.infinity,
          height: size.height,
         color: Colors.black26,
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo_noBg.png',
                  height: 300,
                  width: 400,
                  color: Colors.deepOrange,
                ),
                //  const Spacer(),
                GlassContent(size: size),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  children:  [
                    const Spacer(),
                    RoundedButton(
                      height: 50,
                      width: 150,
                      text:  'Work With Me',

                      ),

                    const Spacer(),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 20,
          left: 20,
          child: Menu(),
        ),
      ],
    );
  }
}


