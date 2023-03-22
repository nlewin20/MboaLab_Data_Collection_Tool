import 'package:flutter/material.dart';

///--------Colors---------///
const Color kPurple = Color(0xFF4945EC);
const Color kPurple20 = Color(0xFFEEEDFF);

const Color kFuchsia = Color(0xFFFC4747);

const Color kDark = Color(0xFF353535);

const double kDefaultPadding = 16.0;
const double kDefaultPadding2x = 32.0;

///----TextStyles----///
const TextStyle kHeading = TextStyle(fontWeight: FontWeight.w400, fontSize: 24);

const TextStyle kBody = TextStyle(fontWeight: FontWeight.normal, fontSize: 12);
const TextStyle kBodyBold =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 12);

///----------Text Form Field styles ---------////
InputDecoration customTextFieldDecoration = InputDecoration(
  errorStyle: kBody.copyWith(color: kFuchsia),

  errorBorder: OutlineInputBorder(
    gapPadding: 0,
    borderSide: const BorderSide(width: 1, color: kFuchsia),
    borderRadius: BorderRadius.circular(
      kDefaultPadding,
    ),
  ),

  border: OutlineInputBorder(
    gapPadding: 0,
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(kDefaultPadding),
  ),
  focusedBorder: OutlineInputBorder(
    gapPadding: 0,
    borderSide: const BorderSide(width: 2, color: kPurple),
    borderRadius: BorderRadius.circular(kDefaultPadding),
  ),
  enabledBorder: OutlineInputBorder(
    gapPadding: 0,
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(kDefaultPadding),
  ),
  hoverColor: kPurple20.withOpacity(.5),
  isDense: false,
  filled: true,
  fillColor: kPurple20,
  hintStyle: kBody,

  // fillColor: kPurple20,
);

///-------DateTime Constants -------////
///
Map<int, String> monthsOfYear = {
  1: "January",
  2: "February",
  3: "March",
  4: "April",
  5: "May",
  6: "June",
  7: "July",
  8: "August",
  9: "September",
  10: "October",
  11: "November",
  12: "December",
};
