import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renting_houses_app/app.dart';
import 'package:renting_houses_app/providers/general_provider.dart';
import 'package:renting_houses_app/theme/colors.dart';
import 'package:renting_houses_app/theme/texts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ls = Provider.of<GeneralProvider>(context).layoutSpaces!;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: ls.buttonVerticalPadding,
            horizontal: ls.buttonHorizontalPadding),
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(ls.buttonBorderRadius * 5),
        ),
        child: Center(
          child: MyText(
            text: text,
            size: ls.subtitleSize,
            color: Colors.white,
            weight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const SecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ls = Provider.of<GeneralProvider>(context).layoutSpaces!;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: ls.buttonVerticalPadding,
            horizontal: ls.buttonHorizontalPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ls.buttonBorderRadius * 5),
          border: Border.all(
            color: AppColors.orange,
            width: 2,
          ),
        ),
        child: Center(
          child: MyText(
            text: text,
            size: ls.subtitleSize,
            color: AppColors.orange,
            weight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
