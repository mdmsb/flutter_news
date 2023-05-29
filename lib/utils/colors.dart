import 'package:flutter/material.dart';
import 'package:flutter_news/utils/providers.dart';
import 'package:provider/provider.dart';

class AppColors {
  static Color background = const Color.fromARGB(255, 17, 17, 17);
  static Color cards = const Color.fromARGB(255, 54, 55, 60);
  static Color primary = Colors.orange;
  static Color text = Colors.white;
}

class MyColors {
  static Color dark1 = const Color.fromARGB(255, 17, 17, 17);
  static Color dark2 = const Color.fromARGB(255, 54, 55, 60);
  static Color primary = Colors.orange;
  static Color text = Colors.white;
}

ThemeData myLightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.amber,
);
ThemeData myDarkTheme = ThemeData(
  scaffoldBackgroundColor: MyColors.dark1,
  primaryColor: MyColors.dark2,
);

primaryColor(context) {
  if (Provider.of<ThemeChanger>(context).getTheme() == ThemeMode.light) {
    return myLightTheme.primaryColor;
  } else {
    return myDarkTheme.primaryColor;
  }
}
