import 'package:flutter/material.dart';

List<GlobalKey> listGlobalKey = List.generate(4, (index) => GlobalKey());

void scrollToSection(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}
