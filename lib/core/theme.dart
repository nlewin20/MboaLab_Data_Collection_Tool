import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData customLightTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: kPurple,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    cardColor: kPurple20,
    iconTheme: const IconThemeData(color: kDark),
    fontFamily: "Poppins",
    textTheme: const TextTheme(
        displayLarge: kHeading,
        displayMedium: kHeading,
        bodyLarge: kBodyBold,
        bodyMedium: kBody),
    colorScheme: const ColorScheme.light()
        .copyWith(secondary: kFuchsia)
        .copyWith(background: Colors.white),
  );
}

ThemeData customDarkTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: kPurple,
    scaffoldBackgroundColor: const Color.fromARGB(255, 17, 17, 17),
    brightness: Brightness.dark,
    cardColor: kPurple.withOpacity(.2),
    iconTheme: const IconThemeData(color: Colors.white),
    fontFamily: "Poppins",
    textTheme: const TextTheme(
        displayLarge: kHeading,
        displayMedium: kHeading,
        bodyLarge: kBody,
        bodyMedium: kBody),
    colorScheme: const ColorScheme.dark()
        .copyWith(secondary: kFuchsia)
        .copyWith(background: const Color.fromARGB(255, 17, 17, 17)),
  );
}
