import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double FontSize;
  TextOverflow overFlow;
  BigText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.FontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontSize: FontSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: color,
      ),
      overflow: overFlow,
    );
  }
}
