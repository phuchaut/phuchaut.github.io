import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class LanguageCardDesktop extends StatelessWidget {
  const LanguageCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Languages',
                  style: TextStyle(
                      color: CustomColor.subColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (int i = 0; i < programmingLanguages.length; i++)
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: const Offset(0, 1))
                      ]),
                      child: Chip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        label: Text(
                          programmingLanguages[i]['title'],
                          style: const TextStyle(
                              color: CustomColor.subColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        avatar: Image.asset(
                          programmingLanguages[i]['img'],
                          width: 32,
                          height: 32,
                        ),
                        backgroundColor: CustomColor.light,
                      ),
                    ),
                ],
              ),
            ],
          )),
    );
  }
}
