import 'package:flutter/material.dart';

class CustomColor {
  //Main and sub colors
  static const Color light =
      Color(0xFFFAFAFA); //main brand color for large sections (hero, etc...)
  static const Color subColor =
      Color(0xFF1C110A); //sub color for contrasts and highlights

  //text colors
  static const Color textPrimary =
      Color(0xFFFAFAFA); //for main text (e.g., headings)
  static const Color textSecondary =
      Color(0xFFA4B5BF); //for secondary text(e.g., subtitles, hints)

  //background colors
  static const Color bgLight =
      Color(0xFFEEEEEC); //soft beige for sections (warmer)
  static const Color bgDark =
      Color(0xFF1F2326); //dark, complementary background

  //button colors
  static const Color buttonPrimary =
      Color(0xFF236923); //primary buttons (bright and eye-catching)
  static const Color buttonSecondary =
      Color(0xFF01A137); //secondary buttons (calmer tone)

  //navigation colors
  static const Color navBg = Color(0xFF236923); //dark red
  static const Color navButtonBG = Color(0xFF01A137);
  static const Color navBgStart =
      Color(0xFF01A137); //dark brownish red (start of gradient)
  static const Color navBgEnd =
      Color(0xFF1F4529); //slightly lighter red (end of gradient)
  static const Color navButtonTextColor =
      Color(0xFFFFFFFF); //color for navigation buttons in the top app bar
  static const Color menuHamburgerColor =
      Color(0xFFE4D6A7); //color for menu hamburger icon

  //hero section
  static const Color heroBg =
      Color(0xFFA6122D); //main color for hero sections or large areas

  //border and accent colors
  static const Color border =
      Color(0xFFA4B5BF); //border color for containers, cards, or inputs
  static const Color accent = Color(
      0xFFD6455D); //updated to a more intense red for highlights, icons, or call-to-action

  //widget-specific colors
  static const Color appBarBg =
      Color(0xFF2B1A17); //AppBar background (slightly lighter than sub color)
  static const Color cardBg = Color(0xFFF7F2E7); //card background (light tone)
  static const Color drawerBg =
      Color(0xFF1C110A); //drawer background(sub color)
  static const Color iconColor = Color(0xFFE4D6A7); //icon color to match text

  //error and warning colors
  static const Color errorColor = Color(
      0xFFD6455D); //color updated to a more vibrant red for error messages or icons
  static const Color warningColor = Color(0xFFE9B44C); //color for warnings

  //tooltip and hover colors
  static const Color tooltipBg = Color(
      0xFF2B1A17); //tooltip background color (darkened to fit dark sections)
  static const Color hoverBg =
      Color(0xFFA4B5BF); //hover background for buttons or cards
}
