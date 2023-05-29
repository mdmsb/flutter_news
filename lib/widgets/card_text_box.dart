import 'package:flutter/material.dart';

Widget textBox(size, context) {
  return Padding(
    padding: const EdgeInsets.all(28.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.black),
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            'Breaking',
            style: TextStyle(
              fontSize: size - 5,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla varius ante ac dui lobortis lacinia. Fusce libero nibh.",
            style: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium!.color,
                fontSize: size,
                height: 1.5),
          ),
        ),
      ],
    ),
  );
}
