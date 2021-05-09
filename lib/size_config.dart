import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Obtener la altura proporcional según el tamaño de la pantalla
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 es la altura del diseño que usa el diseño
  return (inputHeight / 812.0) * screenHeight;
}

// Obtener la altura proporcional según el tamaño de la pantalla
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 es el ancho del diseño que usa el diseñador
  return (inputWidth / 375.0) * screenWidth;
}
