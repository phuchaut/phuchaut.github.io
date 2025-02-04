import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/skill_items.dart';

class FrameworkCardMobile extends StatelessWidget {
  const FrameworkCardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            const SizedBox(
              height: 30,
              width: double.infinity,
              child: Text(
                "Frameworks",
                style: TextStyle(
                    color: CustomColor.subColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            for (int i = 0; i < frameworks.length; i++)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                decoration: BoxDecoration(
                    color: CustomColor.light,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: CustomColor.subColor.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //framework icon
                    Image.asset(
                      frameworks[i]['img'],
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    //framework text
                    Text(
                      frameworks[i]['title'],
                      style: const TextStyle(
                          color: CustomColor.subColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
