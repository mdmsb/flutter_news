import 'package:flutter/material.dart';
import 'package:flutter_news/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';
import 'card_image_box.dart';
import 'card_text_box.dart';

class SectionAnalysis extends StatefulWidget {
  const SectionAnalysis({super.key, required this.myList});
  final List myList;

  @override
  State<SectionAnalysis> createState() => _SectionAnalysisState();
}

class _SectionAnalysisState extends State<SectionAnalysis> {
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
                desktop: (p0) => LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double parentWidth = constraints.maxWidth;
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: (parentWidth / 3) - 6.8,
                    decoration: BoxDecoration(color: AppColors.cards),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          ClipOval(
                            clipBehavior: Clip.hardEdge,
                            child: AnimatedScale(
                              scale: _scaleImageList[index],
                              duration: const Duration(milliseconds: 300),
                              child: Container(
                                height: 170,
                                width: 170,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://picsum.photos/id/52/500/300"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Ahmed Usman',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla varius ante ac dui lobortis lacinia. Fusce maximus libero nibh.",
                                      style: TextStyle(
                                          color: AppColors.text,
                                          fontSize: 22,
                                          height: 1.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                tablet: (p0) => LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double parentWidth = constraints.maxWidth;
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: (parentWidth / 2) - 5,
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
                                    image: NetworkImage(
                                        "https://picsum.photos/id/52/500/300"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: textBox(17),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                mobile: (p0) => Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(color: AppColors.cards),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: 100,
                            child: imageBoxSmall(_scaleImageList[index])),
                        Expanded(child: textBox(15)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
