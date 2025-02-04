import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/nav_items.dart';
import 'package:myportfolio/widgets/navigate_header.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.navBgEnd,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navItems.length; i++)
            ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: const TextStyle(
                    color: CustomColor.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                leading: Icon(navIcons[i]),
                title: Text(navItems[i]),
                onTap: () {
                  Navigator.pop(context); // Đóng drawer trước
                  Future.delayed(const Duration(milliseconds: 300), () {
                    // Đợi drawer đóng hẳn
                    scrollToSection(listGlobalKey[i]);
                  });
                })
        ],
      ),
    );
  }
}
