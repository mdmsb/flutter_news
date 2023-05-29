import 'package:flutter/material.dart';
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
    List<Widget> navAboutList = [
      Text(
        "About Us",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "International",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Sales",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Site Map",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Editorial Guidelines",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "News Board",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
    ];
    List<Widget> footerTermsList = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Terms & Conditions",
          style:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Privacy & Cookies",
          style:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Privacy Options",
          style:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Accessibility",
          style:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Contact Us",
          style:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        ),
      ),
    ];

    List<Widget> navServiceList = [
      Text(
        "News Feeds",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "On Your Phone",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Radio",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
    ];

    List<Widget> navChannelsList = [
      Text(
        "Art",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Entertainment",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Sports",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
    ];

    List<Widget> navMoreList = [
      Text(
        "Studio",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Emirates",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
      Text(
        "Advertise With Us",
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color, fontSize: 16),
      ),
    ];
    return Container(
      width: double.infinity,
      color: Theme.of(context).cardTheme.color,
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
                    navAbout(navAboutList),
                    navService(navServiceList),
                    navChannels(navChannelsList),
                    navMore(navMoreList),
                  ],
                ),
                mobile: (p0) => Column(
                  children: [
                    ExpansionTile(
                      title: Text(
                        "About Musab",
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                            fontSize: 20),
                      ),
                      children: [
                        for (var data in navAboutList) data,
                      ],
                    ),
                    footerDivider(),
                    ExpansionTile(
                      title: Text(
                        "Services",
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                            fontSize: 20),
                      ),
                      children: [
                        for (var data in navServiceList) data,
                      ],
                    ),
                    footerDivider(),
                    ExpansionTile(
                      title: Text(
                        "Channels",
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                            fontSize: 20),
                      ),
                      children: [
                        for (var data in navChannelsList) data,
                      ],
                    ),
                    footerDivider(),
                    ExpansionTile(
                      title: Text(
                        "More Sites",
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                            fontSize: 20),
                      ),
                      children: [
                        for (var data in navMoreList) data,
                      ],
                    ),
                  ],
                ),
              ),
              footerDivider(),
              footerTerms(footerTermsList),
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
                    Text(
                      "© 2023 Musab",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium!.color),
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

  Widget footerTerms(footerTermsList) {
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

  Widget navAbout(navAboutList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Musab",
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
              fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navAboutList) data,
      ],
    );
  }

  Widget navService(navServiceList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services",
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
              fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navServiceList) data,
      ],
    );
  }

  Widget navChannels(navChannelsList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Channels",
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
              fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        for (var data in navChannelsList) data,
      ],
    );
  }

  Widget navMore(navMoreList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "More Sites",
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium!.color,
              fontSize: 20),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.facebook,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                ),
                ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType !=
                      DeviceScreenType.mobile) {
                    return Text(
                      'Facebook',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium!.color),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.facebook,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                ),
                ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType !=
                      DeviceScreenType.mobile) {
                    return Text(
                      'Twitter',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium!.color),
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
