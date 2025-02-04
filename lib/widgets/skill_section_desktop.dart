import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/widgets/navigate_header.dart';
import 'package:myportfolio/widgets/skill_section_framework_desktop.dart';
import 'package:myportfolio/widgets/skill_section_platform_card_desktop.dart';
import 'package:myportfolio/widgets/skill_section_language_card_desktop.dart';

class SkillSectionDesktop extends StatelessWidget {
  const SkillSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: listGlobalKey[1],
        child: Container(
          //key: listGlobalKey[1],
          color: CustomColor.light,
          width: double.infinity,
          height: 420,
          child: const Column(
            children: [
              //title
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "My Skills",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.subColor),
                ),
              ),
              //platforms and skills
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //platforms
                  PlatformCardDesktop(),
                  SizedBox(
                    width: 20,
                  ),
                  //Programming Languages
                  LanguageCardDesktop(),
                  SizedBox(
                    width: 20,
                  ),
                  FrameworkCardDesktop()
                ],
              )
            ],
          ),
        ));
  }
}
