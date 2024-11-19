import 'package:flutter/material.dart';


MaterialColor PrimaryMaterialColor = MaterialColor(
  4291231801,
  <int, Color>{
    50: Color.fromRGBO(
      156,
      0,
      199,
      0.10196078431372549,
    ),
    100: Color.fromRGBO(
      163,
      0,
      199,
      0.2,
    ),
    200: Color.fromRGBO(
      186,
      0,
      199,
      0.30196078431372547,
    ),
    300: Color.fromRGBO(
      199,
      0,
      133,
      0.4,
    ),
    400: Color.fromRGBO(
      199,
      0,
      172,
      0.5019607843137255,
    ),
    500: Color.fromRGBO(
      129,
      0,
      199,
      0.6,
    ),
    600: Color.fromRGBO(
      129,
      0,
      199,
      0.7019607843137254,
    ),
    700: Color.fromRGBO(
      169,
      0,
      199,
      0.8,
    ),
    800: Color.fromRGBO(
      156,
      0,
      199,
      0.9019607843137255,
    ),
    900: Color.fromRGBO(
      186,
      0,
      199,
      1.0,
    ),
  },
);

ThemeData myTheme = ThemeData(
  fontFamily: "customFont",
  primaryColor: const Color(0xffc70095),


  primarySwatch: PrimaryMaterialColor,


);
