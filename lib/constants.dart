import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);
const prColor = Colors.deepOrange;
var scndColor = Colors.blue[900];

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color:  scndColor!.withOpacity(0.25),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

const String aboutMeShort = 'I create inclusive online presence that will help your business grow and evolve with time and trend. I believe in leveraging technology to let the world know your story. A story that reflects your unique and multi-layered identity. \n\nI specialize in start-ups that want to begin their online journey. With tailored service plans, I will ensure that you get world class website that clearly reflects your expertise, story, and values without finances hindering progress. So, what is your situation? Let\'s talk about it.';
const String collaboText = 'I am a Flutter Developer. I am very confident with my abilities and I am sure you are very good too. \nBut we can be EXTRAORDINARY by working together.';
const String complimentaryServicesText = 'Using the best tools in the trade, I am here to ensure that you are well covered on all bases. While your business may have established a presence, it might not give off the impression you and your work deserves. \n\nLet me jump in and help you showcase your brilliant work, so you can hook more clients, \nwith my COMPLIMENTARY SERVICES.';
const String hireMeText = 'Your know the \'WHAT\', I know the \'HOW\', so let\'s nash our heads together and create something Amazing.';
//const String maintainanceText = 'Technology is ';
const String seoText = 'I wouldn\'t want to hang you out to dry. After your website is set, people still need to find you on search engines like Google. It is just a little wording, a little nudge that will make all the difference.';