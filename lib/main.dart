import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mutumbami_portfolio_2/drawer/main_page.dart';

import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Danmore Mututmbami',
      theme: ThemeData(
          inputDecorationTheme: kDefaultInputDecorationTheme,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
            backgroundColor: kBgDarkColor,
          ),
          colorScheme: ColorScheme(
            primary: prColor,
            primaryContainer: kBgDarkColor,
            error: Colors.red,
            surface: kBgDarkColor,
            onPrimary: Colors.white,
            secondary: scndColor,
            background: kBgLightColor,
            onSurface: Colors.black,
            secondaryContainer: kTitleTextColor,
            onSecondary: Colors.black,
            brightness: Brightness.light,
            onError: Colors.white,
            onBackground: kTextColor,
          ),
          textTheme: const TextTheme(
            headline4: TextStyle(
              color: kTitleTextColor,
              fontWeight: FontWeight.bold,
            ),
            subtitle1: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            bodyText1: TextStyle(
              fontWeight: FontWeight.w200,
              color: kTextColor,
              height: 2,
            ),
          )),
      home: const MainPage(),
    );
  }
}
