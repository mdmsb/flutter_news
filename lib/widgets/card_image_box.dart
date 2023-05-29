import 'package:flutter/material.dart';

Widget imageBox(double scaleImage) {
  return ClipRect(
    clipBehavior: Clip.hardEdge,
    child: AnimatedScale(
      scale: scaleImage,
      duration: const Duration(milliseconds: 300),
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
  );
}

Widget imageBoxSmall(double scaleImage) {
  return ClipRect(
    clipBehavior: Clip.hardEdge,
    child: AnimatedScale(
      scale: scaleImage,
      duration: const Duration(milliseconds: 300),
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://picsum.photos/id/52/500/300"),
          ),
        ),
      ),
    ),
  );
}
