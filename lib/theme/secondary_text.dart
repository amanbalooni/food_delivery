import 'package:flutter/cupertino.dart';

class SecondaryText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  SecondaryText({
    super.key,
    this.color = const Color(0xFFCCC7C5),
    this.height=1.2,
    required this.text,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: 'Roboto',
          height: height
      ),
    );
  }
}
