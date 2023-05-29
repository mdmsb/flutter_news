import 'package:flutter/material.dart';
import 'package:flutter_news/screens/home.dart';
import 'package:flutter_news/utils/colors.dart';
import 'package:flutter_news/utils/providers.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferences.getInstance().then((prefs) {
    bool darkMode = prefs.getBool('theme') ?? false;
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                ThemeChanger(darkMode ? ThemeMode.dark : ThemeMode.light)),
      ],
      child: const MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: myLightTheme,
        darkTheme: myDarkTheme,
        themeMode: Provider.of<ThemeChanger>(context).getTheme(),
        home: const Home(),
      );
    });
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: const Banner1(),
    );
  }
}

class StackedLayout extends StatelessWidget {
  const StackedLayout({super.key, required this.mylist, required this.width});
  final List<Widget> mylist;
  final int width;

  @override
  Widget build(BuildContext context) {
    final maxWidthThreshold = width * 0.7;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > maxWidthThreshold) {
        return Row(
          children: mylist,
        );
      } else {
        return Column(
          children: mylist,
        );
      }
    });
  }
}

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return StackedLayout(
      mylist: [
        Image.network("https://picsum.photos/id/20/500/300"),
        Image.network("https://picsum.photos/id/20/500/300"),
      ],
      width: 700,
    );
  }
}
