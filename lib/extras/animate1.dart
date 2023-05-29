import 'package:flutter/material.dart';
import 'package:flutter_news/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Animate1 extends StatefulWidget {
  const Animate1({super.key});

  @override
  State<Animate1> createState() => _Animate1State();
}

class _Animate1State extends State<Animate1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.0, 0.0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileMainCard(width),
      desktop: (context) => desktopMainCard(width),
    );
  }

  Widget mobileMainCard(width) {
    return Column(
      children: const [],
    );
  }

  Widget desktopMainCard(width) {
    return InkWell(
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(color: AppColors.cards),
        child: Stack(
          children: [
            cardOne(),
            SlideTransition(
              position: _animation,
              child: Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.only(right: double.infinity),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.8),
                      blurRadius: 10.0,
                      spreadRadius: 14.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding cardOne() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://picsum.photos/id/52/500/300"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Colors.black),
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: const Text(
                        'Breaking',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Johnson meets Trump 'to discuss Ukraine'; Union drops strike ballot after last minute offer of talks  | Politics latest",
                      style: TextStyle(
                          color: AppColors.text, fontSize: 22, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
