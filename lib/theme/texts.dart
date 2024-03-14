import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final TextAlign? alignment;
  final TextOverflow? overflow;

  const MyText({
    super.key,
    required this.text,
    this.maxLines,
    this.color,
    this.size,
    this.weight,
    this.alignment,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: GoogleFonts.outfit(
        color: color ?? Colors.black,
        fontSize: size ?? 16.0,
        fontWeight: weight ?? FontWeight.normal,
      ),
      textAlign: alignment,
    );
  }
}
