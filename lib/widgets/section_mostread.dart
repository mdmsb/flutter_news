import 'package:flutter/material.dart';
import 'package:flutter_news/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SectionMostRead extends StatefulWidget {
  const SectionMostRead({super.key});

  @override
  State<SectionMostRead> createState() => _SectionMostReadState();
}

class _SectionMostReadState extends State<SectionMostRead> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        // decoration: BoxDecoration(color: AppColors.cards),
        width: double.infinity,
        child: ScreenTypeLayout.builder(
          breakpoints: screenBreaks,
          tablet: (context) => Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    topTrend("1", lorem),
                    rightDivider(),
                    topTrend("2", lorem),
                    rightDivider(),
                    topTrend("3", lorem),
                    rightDivider(),
                    topTrend("4", lorem),
                    rightDivider(),
                    topTrend("5", lorem),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    topTrend("6", lorem),
                    leftDivider(),
                    topTrend("7", lorem),
                    leftDivider(),
                    topTrend("8", lorem),
                    leftDivider(),
                    topTrend("9", lorem),
                    leftDivider(),
                    topTrend("10", lorem),
                  ],
                ),
              ),
            ],
          ),
          mobile: (context) => Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    topTrend("1", lorem),
                    myDivider(),
                    topTrend("2", lorem),
                    myDivider(),
                    topTrend("3", lorem),
                    myDivider(),
                    topTrend("4", lorem),
                    myDivider(),
                    topTrend("5", lorem),
                    myDivider(),
                    topTrend("6", lorem),
                    myDivider(),
                    topTrend("7", lorem),
                    myDivider(),
                    topTrend("8", lorem),
                    myDivider(),
                    topTrend("9", lorem),
                    myDivider(),
                    topTrend("10", lorem),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Divider myDivider() {
    return const Divider(
      color: Colors.grey,
      indent: 20.0,
      endIndent: 20.0,
    );
  }

  Divider rightDivider() {
    return const Divider(
      color: Colors.grey,
      indent: 20.0,
      endIndent: 0,
    );
  }

  Divider leftDivider() {
    return const Divider(
      color: Colors.grey,
      indent: 0,
      endIndent: 20.0,
    );
  }

  Widget topTrend(no, text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              no,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium!.color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
