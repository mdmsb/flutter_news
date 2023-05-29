import 'package:flutter/material.dart';
import 'package:flutter_news/utils/colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

class MyTxt extends StatelessWidget {
  const MyTxt(
      {super.key, required this.text, required this.color, required this.size});
  final String text;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
