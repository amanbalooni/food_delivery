import 'package:flutter/cupertino.dart';
import 'package:food_delivery/theme/dimensions.dart';

class PrimaryText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  PrimaryText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        fontSize: size==0?Dimensions.fontSize16:size
      ),
    );
  }
}
