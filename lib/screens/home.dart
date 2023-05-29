import 'package:flutter/material.dart';
import 'package:flutter_news/widgets/navbar.dart';
import 'package:flutter_news/widgets/section_mostread.dart';

import '../utils/constants.dart';
import '../widgets/card_main.dart';
import '../widgets/footer.dart';
import '../widgets/section_analysis.dart';
import '../widgets/section_feature.dart';
import '../widgets/section_second.dart';
import '../widgets/section_video.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(color: AppColors.background),
          child: const Column(
            children: [
              NavBar(),
              TopStories(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopStories extends StatelessWidget {
  const TopStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 38.0),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Top Stories',
                    style: TextStyle(
                      fontSize: 33,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CardMain(),
                  const SizedBox(height: 10),
                  const SectionSecond(
                    myList: ["", "", "", "", "", ""],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Videos',
                    style: TextStyle(
                        fontSize: 33,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
                  ),
                  const SizedBox(height: 10),
                  const SectionVideo(
                    myList: ["", ""],
                  ),
                  Text(
                    'Features',
                    style: TextStyle(
                        fontSize: 33,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
                  ),
                  const SizedBox(height: 10),
                  const SectionFeatures(
                    myList: ["", ""],
                  ),
                  Text(
                    'Analysis',
                    style: TextStyle(
                        fontSize: 33,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
                  ),
                  const SizedBox(height: 10),
                  const SectionAnalysis(
                    myList: ["", ""],
                  ),
                  Center(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1.0, color: Colors.blue),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        child: Text("Load More"),
                      ),
                    ),
                  ),
                  Text(
                    'Most Read',
                    style: TextStyle(
                        fontSize: 33,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
                  ),
                  const SizedBox(height: 10),
                  const SectionMostRead(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
