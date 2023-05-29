import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'card_image_box.dart';
import 'card_text_box.dart';

class CardMain extends StatefulWidget {
  const CardMain({super.key});

  @override
  State<CardMain> createState() => _CardMainState();
}

class _CardMainState extends State<CardMain> {
  double _scaleImage = 1.0;
  final double _scaleImageIn = 1.1;
  final double _scaleImageOut = 1.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileMainCard(width),
      desktop: (context) => desktopMainCard(width),
    );
  }

  Widget mobileMainCard(width) {
    return InkWell(
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            _scaleImage = _scaleImageIn;
          });
        } else {
          setState(() {
            _scaleImage = _scaleImageOut;
          });
        }
      },
      child: Card(
        // decoration: BoxDecoration(color: AppColors.cards),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              imageBox(_scaleImage),
              SizedBox(
                child: textBox(20, context),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget desktopMainCard(width) {
    return InkWell(
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            _scaleImage = _scaleImageIn;
          });
        } else {
          setState(() {
            _scaleImage = _scaleImageOut;
          });
        }
      },
      child: Card(
        // decoration: BoxDecoration(color: AppColors.cards),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: imageBox(_scaleImage),
              ),
              Expanded(
                flex: 4,
                child: SizedBox(
                  height: 300,
                  child: textBox(22, context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
