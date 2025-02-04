import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/skill_items.dart';

class FrameworkCardDesktop extends StatelessWidget {
  const FrameworkCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Frameworks',
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
                    for (int i = 0; i < frameworks.length; i++)
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
                            frameworks[i]['title'],
                            style: const TextStyle(
                                color: CustomColor.subColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          avatar: Image.asset(
                            frameworks[i]['img'],
                            width: 32,
                            height: 32,
                          ),
                          backgroundColor: CustomColor.light,
                        ),
                      )
                  ],
                ),
              ],
            )));
  }
}
