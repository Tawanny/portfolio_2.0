import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../utils/constants.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              // const Header(openDrawer: op,),
              const Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/images/pwa.png'),
                      ),
                      const SizedBox(width: kDefaultPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: 'service.title!',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                          children: [
                                            TextSpan(
                                                text:
                                                    "  <elvia.atkins@gmail.com> to Jerry Torp",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Inspiration for our new home",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: kDefaultPadding / 2),
                                Text(
                                  "Today at 15:32",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            ),
                            const SizedBox(height: kDefaultPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 850
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'service.shortDescriptiom!',
                                      style: TextStyle(
                                        height: 1.5,
                                        color: Color(0xFF4D5875),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(height: kDefaultPadding),
                                    Row(
                                      children: [
                                        const Text(
                                          "6 attachments",
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "Download All",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        const SizedBox(
                                            width: kDefaultPadding / 4),
                                        const Icon(
                                          LineAwesomeIcons.download,
                                          color: kGrayColor,
                                        )
                                      ],
                                    ),
                                    const Divider(thickness: 1),
                                    const SizedBox(height: kDefaultPadding / 2),
                                    const SizedBox(
                                      height: 200,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
