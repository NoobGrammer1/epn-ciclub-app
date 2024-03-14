import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:renting_houses_app/providers/general_provider.dart';
import 'package:renting_houses_app/theme/buttons.dart';
import 'package:renting_houses_app/theme/colors.dart';
import 'package:renting_houses_app/theme/texts.dart';
import 'package:path_provider/path_provider.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    // Automatic page change every 5 seconds
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      nextPage();
    });
  }

  void nextPage() {
    if (_currentPage < 2) {
      _currentPage++;
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // Si _currentPage es igual a 2, volvemos a 0 para reiniciar el ciclo.
      _currentPage = 0;
      _pageController.animateToPage(
        0,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );

      // Opcional: Volvemos a la primera página.
    }
  }

  @override
  void dispose() {
    // Cancelamos el Timer en el dispose del widget
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GeneralProvider generalProvider =
        Provider.of<GeneralProvider>(context);
    final ls = generalProvider.layoutSpaces!;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingPage(
                title: 'Título 1',
                imagePath: 'assets/images/onboarding-1.jpg',
                description: 'Descripción 1',
              ),
              OnboardingPage(
                title: 'Título 2',
                imagePath: 'assets/images/onboarding-2.png',
                description: 'Descripción 2',
              ),
              OnboardingPage(
                title: 'Título 3',
                imagePath: 'assets/images/onboarding-3.jpg',
                description: 'Descripción 3',
              ),
            ],
          ),
          Positioned(
            bottom: 50.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                  text: 'Iniciar Sesión',
                  onPressed: () {
                    // Acción al presionar el botón Iniciar Sesión
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                SizedBox(height: ls.mainVerticalSpacing),
                SecondaryButton(
                  text: 'Registrarse',
                  onPressed: () {
                    // Acción al presionar el botón Registrarse
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const OnboardingPage({
    required this.title,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final GeneralProvider generalProvider =
        Provider.of<GeneralProvider>(context);
    final ls = generalProvider.layoutSpaces!;
    return Padding(
      padding: EdgeInsets.all(ls.mainHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(ls.borderRadius * 3),
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              )),
          SizedBox(height: ls.mainVerticalSpacing),
          MyText(
            text: title,
            size: ls.titleSize,
            weight: FontWeight.bold,
            alignment: TextAlign.center,
            color: AppColors.darkBlue,
          ),
          SizedBox(height: ls.mainVerticalSpacing),
          MyText(
            text: description,
            size: ls.bodySize,
            alignment: TextAlign.center,
            color: AppColors.lightGrey,
          ),
        ],
      ),
    );
  }
}
