import 'package:flutter/material.dart';

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
  primaryColor: Colors.brown[100],
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black,
    ),
  ),
  cardTheme: CardTheme(
    color: Colors.grey[200],
  ),
);
ThemeData myDarkTheme = ThemeData(
  scaffoldBackgroundColor: MyColors.dark1,
  primaryColor: MyColors.dark2,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
    ),
  ),
  cardTheme: CardTheme(
    color: MyColors.dark2,
  ),
);

myTextColor(context) => Theme.of(context).textTheme.bodyMedium!.color;

// primaryColor(context) {
//   if (Provider.of<ThemeChanger>(context).getTheme() == ThemeMode.light) {
//     return myLightTheme.primaryColor;
//   } else {
//     return myDarkTheme.primaryColor;
//   }
// }
