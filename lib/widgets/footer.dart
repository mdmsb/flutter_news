import 'package:flutter/material.dart';
import 'package:flutter_news/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.cards,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              mySocial(),
              footerDivider(),
              ScreenTypeLayout.builder(
                breakpoints: screenBreaks,
                tablet: (p0) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    navAbout(),
                    navService(),
                    navChannels(),
                    navMore(),
                  ],
                ),
                mobile: (p0) => Column(
                  children: [
                    ExpansionTile(
                      title: const Text(
                        "About Musab",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      children: [
                        for (var data in navAboutList) data,
                      ],
                    ),
                    footerDivider(),
                    ExpansionTile(
                      title: const Text(
                        "Services",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      children: [
                        for (var data in navServiceList) data,
                      ],
                    ),
                    footerDivider(),
                    ExpansionTile(
                      title: const Text(
                        "Channels",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      children: [
                        for (var data in navChannelsList) data,
                      ],
                    ),
                    footerDivider(),
                    ExpansionTile(
                      title: const Text(
                        "More Sites",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      children: [
                        for (var data in navMoreList) data,
                      ],
                    ),
                  ],
                ),
              ),
              footerDivider(),
              footerTerms(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                child: Row(
                  children: [
                    Container(
                      width: 110,
                      height: 80,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/id/20/110/60"))),
                    ),
                    const Text(
                      "© 2023 Musab",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Divider footerDivider() {
    return const Divider(
      color: Colors.grey,
      indent: 20.0,
      endIndent: 20.0,
    );
  }

  List<Widget> footerTermsList = [
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Terms & Conditions",
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Privacy & Cookies",
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Privacy Options",
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Accessibility",
        style: TextStyle(color: Colors.white),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Contact Us",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];
  Widget footerTerms() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
      child: ScreenTypeLayout.builder(
        breakpoints: screenBreaks,
        tablet: (p0) => Row(
          children: footerTermsList,
        ),
        mobile: (p0) => SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: footerTermsList,
          ),
        ),
      ),
    );
  }

  List<Widget> navAboutList = [
    const Text(
      "About Us",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "International",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Sales",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Site Map",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Editorial Guidelines",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "News Board",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  ];

  Widget navAbout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About Musab",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navAboutList) data,
      ],
    );
  }

  List<Widget> navServiceList = [
    const Text(
      "News Feeds",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "On Your Phone",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Radio",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  ];
  Widget navService() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Services",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navServiceList) data,
      ],
    );
  }

  List<Widget> navChannelsList = [
    const Text(
      "Art",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Entertainment",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Sports",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  ];
  Widget navChannels() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Channels",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navChannelsList) data,
      ],
    );
  }

  List<Widget> navMoreList = [
    const Text(
      "Studio",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Emirates",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    const Text(
      "Advertise With Us",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  ];
  Widget navMore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "More Sites",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navMoreList) data,
      ],
    );
  }

  Widget mySocial() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                ),
                ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType !=
                      DeviceScreenType.mobile) {
                    return const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    );
                  }
                  return Container();
                }),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                ),
                ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType !=
                      DeviceScreenType.mobile) {
                    return const Text(
                      'Twitter',
                      style: TextStyle(color: Colors.white),
                    );
                  }
                  return Container();
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
