import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renting_houses_app/providers/general_provider.dart';
import 'package:renting_houses_app/theme/colors.dart';
import 'package:renting_houses_app/theme/texts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ls = Provider.of<GeneralProvider>(context).layoutSpaces!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ls.mainHorizontalPadding,
            vertical: ls.mainVerticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                  text: 'Crear cuenta',
                  size: ls.titleSize,
                  weight: FontWeight.w600),
              SizedBox(height: ls.mainVerticalSpacing / 2),
              MyText(
                  text:
                      'Crea tu cuenta gratuitamente para encontrar tu futuro piso',
                  size: ls.subtitleSize,
                  weight: FontWeight.w500,
                  maxLines: 2,
                  color: AppColors.lightGrey),
              SizedBox(height: ls.mainVerticalPadding),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(ls.borderRadius),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
