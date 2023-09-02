import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  const PrimaryText({super.key, required this.text, required this.size, required this.fontWeight, required this.color, this.textAlign, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'AvenirNextLTPro',
          fontSize: size,
          fontWeight: fontWeight,
          color: color),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}

class gap extends StatelessWidget {
  final double? height;
  final double? width;
  const gap({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height,
      width: width,
    );
  }
}

