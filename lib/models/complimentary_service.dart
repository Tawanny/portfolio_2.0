import 'package:flutter/material.dart';

import '../constants.dart';

class CompService {
  final int? id;
  final String? title, image, subtitle;
  final List<String>? points;
  final Color? color;

  CompService(
      {this.id,
      this.title,
      this.image,
      this.color,
      this.subtitle,
      this.points});
}

List<CompService> complimentaryServices = [
  CompService(
    id: 1,
    title: 'SEO and Analytics',
    subtitle: seoText,
    points: [
      'Search engines usually rates sites that are fast.',
      'Your site needs to impress the dynamic search engine algorithms',
      'Your site needs to have the right keyword that are relevant at the moment',
      'Analytics help us to know who visits your site, age, race and origin, and we can target them directly',
      'SEO ad Analytics can help you target the right audience and improve your marketing.'
          'All this will Improve your visibility online, which means more customers visiting your site.'
    ],
    image: 'assets/images/seo_purple.jpg',
    color: const Color(0xFFD9FFFC),
  ),
  CompService(
    id: 2,
    title: 'Local Business Google SEO',
    subtitle: googleBsnsText,
    points: [
      'Google Business makes it easy for local people to find you online.',
      'People will be able to visit your site through your link',
      'Whenever anyone search for anything related to your business and services, there you pop up, with your website link.',
      'Your contact information, your services or product, and all other important information.'
          'Even when vistors from out of town can easily know how to find your store using google location',
    ],
    image: 'assets/images/local_bsns.jpg',
    color: const Color(0xFFE4FFC7),
  ),
  CompService(
    id: 3,
    title: 'Website Maintenance',
    subtitle: maintainanceText,
    points: [
      'Regular content updates.',
      'Up-to-date security and protection measures.',
      'to stay compatible with new Technologies and internet algorithms.',
      'Improved UI/UX to keep up with trend, to keep customers hooked.',
      ' Avoid fatal errors by early bug fixes',
    ],
    image: 'assets/images/maintainance.png',
    color: const Color(0xFFFFF3DD),
  ),
  CompService(
    id: 4,
    title: 'Blogging Services',
    subtitle: blogPostsText,
    points: [
      'Blogging is one way of advertising and selling your expertise without really selling.',
      'People buy value, and they buy you before the product, so they need a reason to choose you',
      'Blogging proves you an expert in your field.',
      'it will also give people a reason to visit your site time and again.',
      'If people can come to you for answers, they will definitely come to you when they need your product and service.',
      'Too busy for this, that is why I am here.',
    ],
    image: 'assets/images/google.png',
    color: const Color(0xFFFFE0E0),
  ),
];
