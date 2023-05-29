import 'package:flutter/material.dart';
import 'package:flutter_news/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';
import 'card_text_box.dart';

class SectionFeatures extends StatefulWidget {
  const SectionFeatures({super.key, required this.myList});
  final List myList;

  @override
  State<SectionFeatures> createState() => _SectionFeaturesState();
}

class _SectionFeaturesState extends State<SectionFeatures> {
  late List<double> _scaleImageList;

  @override
  void initState() {
    super.initState();
    _scaleImageList = List<double>.filled(widget.myList.length, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 10.0,
        children: [
          for (int index = 0; index < widget.myList.length; index++)
            InkWell(
              onTap: () {},
              onHover: (isHovering) {
                if (isHovering) {
                  setState(() {
                    _scaleImageList[index] = 1.1;
                  });
                } else {
                  setState(() {
                    _scaleImageList[index] = 1.0;
                  });
                }
              },
              child: ScreenTypeLayout.builder(
                breakpoints: screenBreaks,
                desktop: (p0) => desktopMainCard(index),
                tablet: (p0) => mobileMainCard(index),
                mobile: (p0) => mobileMainCard(index),
              ),
            ),
        ],
      ),
    );
  }

  Widget mobileMainCard(index) {
    return Container(
      decoration: BoxDecoration(color: AppColors.cards),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            ClipRect(
              clipBehavior: Clip.hardEdge,
              child: AnimatedScale(
                scale: _scaleImageList[index],
                duration: const Duration(milliseconds: 300),
                child: Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          NetworkImage("https://picsum.photos/id/52/500/300"),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: textBox(20),
            )
          ],
        ),
      ),
    );
  }

  Widget desktopMainCard(index) {
    return Container(
      decoration: BoxDecoration(color: AppColors.cards),
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: ClipRect(
                clipBehavior: Clip.hardEdge,
                child: AnimatedScale(
                  scale: _scaleImageList[index],
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage("https://picsum.photos/id/52/500/300"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                height: 250,
                child: textBox(22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
