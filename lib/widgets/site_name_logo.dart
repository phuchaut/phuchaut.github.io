import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';

class SiteNameLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteNameLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Trịnh Phúc Hậu",
        style: TextStyle(
            color: CustomColor.navButtonTextColor,
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
