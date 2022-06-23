import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mutumbami_portfolio_2/components/rounded_button.dart';
import 'package:mutumbami_portfolio_2/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/complimentary_service.dart';

class AllCompServices extends StatefulWidget {
  const AllCompServices({Key? key}) : super(key: key);

  @override
  State<AllCompServices> createState() => _AllCompServicesState();
}

class _AllCompServicesState extends State<AllCompServices> {
  int activeIndex = 0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Text(
              'Oh Wait, There is More!',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 80,
              width: 100,
              child: Image.asset('assets/gif/glasses.gif'),
            ),
            const Spacer(),
          ],
        ),
        const Text(
          complimentaryServicesText,
          style: TextStyle(
              fontWeight: FontWeight.w200, color: kTextColor, height: 2),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 280,
          width: size.width * 0.5,
          child: CarouselSlider.builder(
            itemCount: complimentaryServices.length,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              onPageChanged: (index, reason) => setState(() {
                activeIndex = index;
              }),
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              CompService service = complimentaryServices[index];
              return Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          service.title!,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: prColor,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 2),
                        Text(
                          service.subtitle!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w200,
                            color: kTextColor,
                            height: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            service.image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: complimentaryServices.length,
          effect: const JumpingDotEffect(
            radius: 10,
            dotHeight: 10,
            dotWidth: 10,
          ),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: RoundedButton(
            height: 40,
            width: 100,
            text: 'Subscribe',
          ),
        ),
      ],
    );
  }
}

// Container(
// height: 350,
// width: 350,
// decoration: BoxDecoration(
// color: Colors.black87,
// borderRadius: BorderRadius.circular(15),
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// const Spacer(),
// Text(
// service.title!,
// style: const TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 18,
// color: Colors.white,
// height: 2),
// ),
// const Spacer(flex: 2),
// Text(
// service.subtitle!,
// style: const TextStyle(
// fontWeight: FontWeight.w200,
// color: Colors.white,
// height: 2,
// ),
// ),
// const Spacer(),
// ],
// ),
// ),
// ),
