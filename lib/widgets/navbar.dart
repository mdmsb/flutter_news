import 'package:flutter/material.dart';
import 'package:flutter_news/utils/colors.dart';
import 'package:flutter_news/utils/styles.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/providers.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  setThemeMode(bool mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('theme', mode);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileNavBar(),
      desktop: (context) => desktopNavBar(),
    );
  }

  Widget mobileNavBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(),
            const Icon(Icons.menu),
          ],
        ),
      ),
    );
  }

  Widget desktopNavBar() {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
      decoration: BoxDecoration(color: AppColors.cards),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navLogo(),
                GestureDetector(
                  onTap: () {
                    if (theme.getTheme() == ThemeMode.dark) {
                      theme.setTheme(ThemeMode.light);
                      setThemeMode(false);
                    } else {
                      theme.setTheme(ThemeMode.dark);
                      setThemeMode(true);
                    }
                  },
                  child: const Icon(Icons.brightness_4_rounded),
                ),
              ],
            ),
            Row(
              children: [
                navButton("Features"),
                navButton("India"),
                navButton("World"),
                navButton("Politics"),
                navButton("Climate"),
                navButton("Science & Tech"),
                navButton("Business"),
                navButton("Ents & Arts"),
                navButton("Travel"),
                navButton("More"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget desktopNavBarOld() {
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(),
            Row(
              children: [
                navButton("Features"),
                navButton("About Us"),
                navButton("Pricing"),
                navButton("Feedback"),
              ],
            ),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                style: borderedButtonStyle,
                child: Text(
                  'Request a Demo',
                  style: TextStyle(color: AppColors.primary),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      height: 80,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/20/110/60"))),
    );
  }

  Widget navButton(String text) {
    return Container(
      child: TextButton(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
