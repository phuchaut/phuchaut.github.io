import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';

BoxDecoration kNavGradientBoxDecoration = const BoxDecoration(
    gradient: LinearGradient(
        colors: [CustomColor.navBgStart, CustomColor.navBgEnd],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight));
