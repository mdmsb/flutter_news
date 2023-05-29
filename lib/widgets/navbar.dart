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

  toggleTheme(theme) {
    if (theme.getTheme() == ThemeMode.dark) {
      theme.setTheme(ThemeMode.light);
      setThemeMode(false);
    } else {
      theme.setTheme(ThemeMode.dark);
      setThemeMode(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileNavBar(),
      desktop: (context) => desktopNavBar(),
    );
  }

  Widget mobileNavBar() {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(),
            GestureDetector(
              onTap: () {
                toggleTheme(theme);
              },
              child: const Icon(Icons.brightness_4_rounded),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MobileNavPage(),
                      ));
                },
                child: const Icon(Icons.menu)),
          ],
        ),
      ),
    );
  }

  Widget desktopNavBar() {
    final theme = Provider.of<ThemeChanger>(context);
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
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
                    toggleTheme(theme);
                  },
                  child: const Icon(Icons.brightness_4_rounded),
                ),
              ],
            ),
            Row(
              children: [
                navButton(context, "Features"),
                navButton(context, "India"),
                navButton(context, "World"),
                navButton(context, "Politics"),
                navButton(context, "Climate"),
                navButton(context, "Science & Tech"),
                navButton(context, "Business"),
                navButton(context, "Ents & Arts"),
                navButton(context, "Travel"),
                navButton(context, "More"),
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
                navButton(context, "Features"),
                navButton(context, "About Us"),
                navButton(context, "Pricing"),
                navButton(context, "Feedback"),
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

  Widget navButton(BuildContext context, String text) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.green;
          }
          return Colors.purpleAccent;
        }),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium!.color,
          fontSize: 18,
        ),
      ),
    );
  }
}

class MobileNavPage extends StatelessWidget {
  const MobileNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                ),
              ),
              navItems("Home"),
              myDivider(),
              navItems("India"),
              myDivider(),
              navItems("World"),
              myDivider(),
              navItems("Politics"),
              myDivider(),
              navItems("Climate"),
              myDivider(),
              navItems("Science & Tech"),
              myDivider(),
              navItems("Business"),
              myDivider(),
            ],
          ),
        ),
      ),
    );
  }

  Divider myDivider() {
    return const Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }

  Widget navItems(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
