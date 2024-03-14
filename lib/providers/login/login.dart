import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:renting_houses_app/providers/general_provider.dart';
import 'package:renting_houses_app/theme/buttons.dart';
import 'package:renting_houses_app/theme/colors.dart';
import 'package:renting_houses_app/theme/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  text: 'Iniciar sesión',
                  size: ls.titleSize,
                  weight: FontWeight.w600),
              SizedBox(height: ls.mainVerticalSpacing / 2),
              MyText(
                  text:
                      'Ingresa con tu cuenta creada anteriormente, o solicita la creación de una nueva cuenta',
                  size: ls.subtitleSize,
                  weight: FontWeight.w500,
                  maxLines: 2,
                  color: AppColors.lightGrey),
              SizedBox(height: ls.mainVerticalPadding),
              MyText(
                text: 'Correo electrónico',
                size: ls.subtitleSize,
                weight: FontWeight.w600,
              ),
              SizedBox(height: ls.mainVerticalSpacing / 2),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ls.mainHorizontalPadding),
                    child: const Icon(
                      Icons.email_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  hintText: 'Ingresa tu correo electrónico',
                  hintStyle: GoogleFonts.outfit(
                    fontSize: ls.subtitleSize,
                    color: AppColors.lightGrey,
                  ),
                  filled: true,
                  fillColor: AppColors.lightGrey.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.lightGrey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(ls.borderRadius * 3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.lightGrey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(ls.borderRadius * 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.orange,
                    ),
                    borderRadius: BorderRadius.circular(ls.borderRadius * 3),
                  ),
                ),
              ),
              SizedBox(height: ls.mainVerticalSpacing),
              MyText(
                text: 'Contraseña',
                size: ls.subtitleSize,
                weight: FontWeight.w600,
              ),
              SizedBox(height: ls.mainVerticalSpacing / 2),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ls.mainHorizontalPadding),
                    child: const Icon(
                      Icons.lock_outline,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  hintText: 'Ingresa tu contraseña',
                  hintStyle: GoogleFonts.outfit(
                    fontSize: ls.subtitleSize,
                    color: AppColors.lightGrey,
                  ),
                  filled: true,
                  fillColor: AppColors.lightGrey.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.lightGrey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(ls.borderRadius * 3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.lightGrey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(ls.borderRadius * 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.orange,
                    ),
                    borderRadius: BorderRadius.circular(ls.borderRadius * 3),
                  ),
                ),
              ),
              SizedBox(height: ls.mainVerticalSpacing),
              Align(
                alignment: Alignment.centerRight,
                child: MyText(
                  text: '¿Olvidaste tu contraseña?',
                  size: ls.subtitleSize,
                  weight: FontWeight.w600,
                  color: AppColors.orange,
                ),
              ),
              Spacer(),
              PrimaryButton(
                  text: 'Iniciar sesión',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
