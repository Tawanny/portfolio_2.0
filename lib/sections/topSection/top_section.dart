import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'components/carousel.dart';
import 'components/menu.dart';

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
          color: Colors.black54,
          child: SizedBox(
            width: 1200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Spacer(),
                      const SocialMediaLinks(),
                      const SizedBox(height: 30),
                      Text(
                        'Danmore Mutumbami',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      const IamCarousel(),
                      const SizedBox(height: 15),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              'Leveraging Technology in a Creative way to help startUps, small and medium businesses \n',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: Colors.white,
                                  ),
                          children: [
                            TextSpan(
                              text: '\nLAUNCH AND GROW ONLINE',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: prColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      RoundedButton(
                        height: 35,
                        width: 130,
                        text: 'Work With Me',
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const Expanded(
                  child: Icon(
                    Ionicons.person_outline,
                    size: 400,
                  ),
                ),

                //GlassContent(size: size),
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

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Ionicons.logo_whatsapp,
              color: Colors.green,
            ),
            Icon(
              Ionicons.logo_slack,
              color: Colors.yellow,
            ),
            Icon(
              Ionicons.logo_twitter,
              color: Colors.blue,
            ),
            Icon(
              Ionicons.logo_snapchat,
              color: Colors.amber,
            ),
          ]),
    );
  }
}
