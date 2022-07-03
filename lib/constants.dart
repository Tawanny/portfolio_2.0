import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);
const prColor = Colors.deepOrange;
var scndColor = Colors.blue[900];

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: scndColor!.withOpacity(0.25),
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

const String aboutMeShort =
    'I create inclusive online presence that will help your business grow and evolve with time and trend. I believe in leveraging technology to let the world know your story. A story that reflects your unique and multi-layered identity. \n\nI specialize in start-ups that want to begin their online journey. With tailored service plans, I will ensure that you get world class website that clearly reflects your expertise, story, and values without finances hindering progress. So, what is your situation? Let\'s talk about it.';
const String collaboText =
    'I am a Flutter Developer. I am very confident with my abilities and I am sure you are very good too. \nBut we can be EXTRAORDINARY by working together.';
const String complimentaryServicesText =
    'Using the best tools in the trade, I am here to ensure that you are well covered on all bases. While your business may have established a presence, it might not give off the impression you and your work deserves. \n\nLet me jump in and help you showcase your brilliant work, so you can hook more clients, \nwith my COMPLIMENTARY SERVICES.';
const String hireMeText =
    'Your know the \'WHAT\', I know the \'HOW\', so let\'s smash our heads together and create something Amazing.';

//COMPLIMENTARY SERVICES
const String maintainanceText =
    'Acquring customers is hard but losing them is as simple as a broken link. That is why your site or app needs:';
const String seoText =
    'Analytics helps us to perform SEO better, to measure site performance so as to know what to improve';
const String googleBsnsText =
    'You want local people to support you? Of-course you do, Let me set you up Quickly on Google.';
const String blogPostsText =
    'You are an expert at what you do, we both know that, but people out there don\'t really know that. with blogging:';

//MY UNIQUE POINTS
const String startupFirstText =
    'I know the hardships of being a startup, believe me, I have been there. Something you need is always too expensive, people saying no to you and customers not trusting you enough. That is why I developed my \'Startup First Attitude\'. I am dedicated to building your brand online. To help you start your business with a \'Bang\', with a wow effect that will make people, fall in love with you instantly. By working together we can build your online presence that will make you look professional and reliable at the same time communicating your uniqueness and aunthenticity.\n\nThere are a lot of things that makes it hard to be startup and grow but being online doesn\'t have to be one of them. By leveraging technology and all my skills to your advantage, I will ensure that your clients get the attention they deserve whether it is in person with you or it is online.';
const String startupShortText = 'I know the hardships of being a startup, believe me, I have been there. That is why I developed my \'Startup First Attitude\'. I am dedicated to building your brand online. To help you start your business with a \'Bang\', with a wow effect that will make people, fall in love with you instantly. By leveraging technology and all my skills to your advantage, we can build your online presence that will make you look professional and reliable at the same time communicating your uniqueness and aunthenticity.';
const String flexiblePaymentsText =
    'Money being one of the biggest barriers when it comes to startups launching their online businesses, creating a website or app for their businesses. I have seen many small businesses settling for sub-standard sites and I have seen and heard many people giving up on their app based ideas because it is expensive to build an app. Well, I am taking that out of the equation by my flexible payment plans. \n\nWe can work-out a payment plan tailored to suit your budget or your monthly income. You don\'t have to pay me once-off, no, you can pay me as you can. If you business is based on subscriptions, you can pay me as per your income so as not to overwhelm you. \n\nYou have an idea for an app, lets work together to bring it to life and then talk about payments. I am telling you, it doesn\'t get any better that this.';
const String flexiblePaymentsShortText ='Money is one of the biggest barriers when it comes to startups launching their online businesses,  creating a website or app for their businesses. I am taking that out of the equation by my flexible payment plans. We can work-out a payment plan tailored to suit your budget or your monthly income without compromising the quality of work. You can still have a world class software but with ease on your pocket. We can work together to bring your business to life, without finances tearing you down.';
const String uniqueText =
    'You are an expert at what you do, I don\'t doubt that, but I don\'t expect you to be an expert in Software development and Web design too, that is my arena. As I am a startup myself, I understand the stress of trying to make everything work. I understand the pressure of competing with well established business. I completely understand the confusion of what to start with, who to talk to and what to do next.\n\n';
const String hereToHelpText =
    'I want you to understand that, I am here to help. \nNot sure, what pages you need and how many? We will figure it out together.\nUnsure where to start with your online campaign, I studied that, so that you don\'t have to. \n\nAs a new business there is a lot to do, so let me take this off your shoulders and give you enough space and time to focus on what you do best. My passion is to help as many people as possible and you can be one of them.';
