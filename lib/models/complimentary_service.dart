import 'package:flutter/material.dart';

import '../constants.dart';

class CompService {
  final int ?id;
  final String? title, image, subtitle;
  final Color? color;

  CompService({this.id, this.title, this.image, this.color, this.subtitle});
}
List<CompService> complimentaryServices = [

  CompService(
    id: 1,
    title: 'SEO and Analytics',
    subtitle: seoText,
    image: 'assets/images/seo_purple.jpg',
    color: const Color(0xFFD9FFFC),
  ),
  CompService(
    id: 2,
    title: 'Local Business Google SEO',
    subtitle: seoText,
    image: 'assets/images/local_bsns.jpg',
    color: const Color(0xFFE4FFC7),
  ),
  CompService(
    id: 3,
    title: 'Website Maintenance',
    subtitle: seoText,
    image: 'assets/images/maintainance.png',
    color: const Color(0xFFFFF3DD),
  ),
  CompService(
    id: 4,
    title: 'Google Ads',
    subtitle: seoText,
    image: 'assets/images/google.png',
    color: const Color(0xFFFFE0E0),
  ),
];