// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_declarations, non_constant_identifier_names

import 'package:flutter/material.dart';

class AppColors {
  static final commonGradient = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: [
      Color(0xffF33F41),
      Color(0xffFB6D72),
    ],
  );
  static final manrajGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xffD9D9D9).withOpacity(0.4),
      Color(0xffFFFFFF).withOpacity(0),
    ],
  );
  static final linearGreen = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xff8FD3F4),
      Color(0xff84FAB0),
    ],
  );
  static final linearOrange = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xffFF5858),
      Color(0xffF09819),
    ],
  );
  static final linearPurple = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xffFD8BD9),
      Color(0xffA85EFA),
    ],
  );
  static final Redgradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xffFE0389),
      Color(0xffFF9E08),
    ],
  );
  static final bluegradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xff277ECD),
      Color(0xff08CBF5),
    ],
  );
  static final commonColor = Color(0xffF33F41);
  static final WhiteColor = Color(0xffFFFFFF);
  static final blackColor = Color(0xff000000);
  static final hintColor = Color(0xff949494);
  static final greyMain = Color(0xffAEAEAE);
  static final grey1 = Color(0xff949494);
  static final grey2 = Color(0xff686868);
  static final grey3 = Color(0xff3B3B3B);
  static final grey4 = Color(0xff828282);
  static final grey5 = Color(0xffE0E0E0);
  static final itemNameClor = Color(0xff434343);
  static final borderColor = Color(0xffD8D8D8);
  static final greenColor = Color(0xff45A843);

  static final transperentColor = Colors.transparent;
}
