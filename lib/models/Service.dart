import 'package:flutter/material.dart';

class Service {
  final int ?id;
  final String? title, image;
  final Color? color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: 'Mobile App Development',
    image: 'assets/gif/App development.gif',
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: 'Web Design',
    image: 'assets/gif/Website designer.gif',
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: 'Progressive Web Apps',
    image: 'assets/gif/Responsive.gif',
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: 'Desktop Apps',
    image: 'assets/gif/Developer activity.gif',
    color: const Color(0xFFFFE0E0),
  ),
];
