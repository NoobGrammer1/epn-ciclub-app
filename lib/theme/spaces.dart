class LayoutSpaces {
  // Paddings sizes
  final double mainHorizontalPadding;
  final double mainVerticalPadding;
  final double buttonHorizontalPadding;
  final double buttonVerticalPadding;
  final double inputHorizontalPadding;
  final double inputVerticalPadding;
  final double inputIconPadding;

  // Elements sizes
  final double inputIconSize;
  final double buttonHeight;
  final double inputHeight;

  // Text sizes
  final double titleSize;
  final double subtitleSize;
  final double bodySize;

  // Elements spacing
  final double mainVerticalSpacing;
  final double mainHorizontalSpacing;

  // Radius
  final double borderRadius;
  final double iconBorderRadius;
  final double buttonBorderRadius;

  // Layout
  final double layoutWidth;
  final double layoutHeight;

  LayoutSpaces({
    required this.mainHorizontalPadding,
    required this.mainVerticalPadding,
    required this.buttonHorizontalPadding,
    required this.buttonVerticalPadding,
    required this.inputHorizontalPadding,
    required this.inputVerticalPadding,
    required this.inputIconPadding,
    required this.inputIconSize,
    required this.buttonHeight,
    required this.inputHeight,
    required this.titleSize,
    required this.subtitleSize,
    required this.bodySize,
    required this.mainVerticalSpacing,
    required this.mainHorizontalSpacing,
    required this.borderRadius,
    required this.iconBorderRadius,
    required this.layoutWidth,
    required this.layoutHeight,
    required this.buttonBorderRadius,
  });

  factory LayoutSpaces.fromWidthAndHeight(double width, double height) {
    // Orientación de la pantalla (retrato o paisaje)
    bool isLandscape = width > height;

    // Definición de los espacios según la orientación de la pantalla
    double mainHorizontalPadding = isLandscape ? width * 0.1 : width * 0.05;
    double mainVerticalPadding = height * 0.05;
    double buttonHorizontalPadding = width * 0.1;
    double buttonVerticalPadding = height * 0.02;
    double inputHorizontalPadding = width * 0.05;
    double inputVerticalPadding = height * 0.02;
    double inputIconPadding = width * 0.02;

    // Otros tamaños y espacios
    double inputIconSize = 24.0;
    double buttonHeight = 50.0;
    double inputHeight = 50.0;
    double titleSize = 24.0;
    double subtitleSize = 18.0;
    double bodySize = 16.0;
    double mainVerticalSpacing = height * 0.02;
    double mainHorizontalSpacing = width * 0.02;
    double borderRadius = 8.0;
    double iconBorderRadius = 12.0;
    double buttonBorderRadius = 10.0;
    return LayoutSpaces(
      mainHorizontalPadding: mainHorizontalPadding,
      mainVerticalPadding: mainVerticalPadding,
      buttonHorizontalPadding: buttonHorizontalPadding,
      buttonVerticalPadding: buttonVerticalPadding,
      inputHorizontalPadding: inputHorizontalPadding,
      inputVerticalPadding: inputVerticalPadding,
      inputIconPadding: inputIconPadding,
      inputIconSize: inputIconSize,
      buttonHeight: buttonHeight,
      inputHeight: inputHeight,
      titleSize: titleSize,
      subtitleSize: subtitleSize,
      bodySize: bodySize,
      mainVerticalSpacing: mainVerticalSpacing,
      mainHorizontalSpacing: mainHorizontalSpacing,
      borderRadius: borderRadius,
      iconBorderRadius: iconBorderRadius,
      layoutWidth: width,
      layoutHeight: height,
      buttonBorderRadius: buttonBorderRadius,
    );
  }
}
