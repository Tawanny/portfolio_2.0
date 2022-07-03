import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Service {
  final int? id;
  final String? title, shortDescriptiom;
  final String? icon;
  final Color? color;

  Service({this.id, this.title, this.shortDescriptiom, this.color, this.icon});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: 'Mobile App Development',
    shortDescriptiom:
        'Responsive and adaptive apps for both IOS and Android OS',
    icon: 'assets/images/development.png',
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web Design",
    shortDescriptiom:
        'Bring your ideas to life online with a beautiful, responsive webiste that communicate your uniqueness.',
    color: const Color(0xFFE4FFC7),
    icon: 'assets/images/ux.png',
  ),
  Service(
    id: 3,
    title: "UI Design",
    shortDescriptiom:
        'An idea is just an idea but it is all about how you present it to the world',
    color: const Color(0xFFFFF3DD),
    icon: 'assets/images/user-interface.png',
  ),
  Service(
    id: 4,
    title: 'Web App Development',
    shortDescriptiom:
        'Reach millions of people with highly Interactive Apps that runs on any mordern browser',
    color: const Color(0xFFFFE0E0),
    icon: 'assets/images/web-development.png',
  ),
  Service(
    id: 5,
    title: 'Desktop App Development',
    shortDescriptiom:
        'High-quality and performant desktop Apps for Windows, Linux and Mac',
    color: const Color(0xFFFFF3DD),
    icon: 'assets/images/ux.png',
  ),
  Service(
    id: 6,
    title: 'Google My Business',
    shortDescriptiom:
        'Get found locally on every search by your customers using google business services',
    color: const Color(0xFFD9FFFC),
    icon: 'assets/images/google.png',
  ),
  Service(
    id: 7,
    title: 'SEO and Analytics',
    shortDescriptiom:
        'Revise what\'s working and what\'s not on your sight by my analytics services',
    color: const Color(0xFFFFE0E0),
    icon: 'assets/images/seo.png',
  ),
  Service(
    id: 8,
    title: 'Site/App Maintainance',
    shortDescriptiom:
        'Let your site stay relevant, updated and bug free by continuous checking and upgrading',
    color: const Color(0xFFE4FFC7),
    icon: 'assets/images/system.png',
  ),
];
