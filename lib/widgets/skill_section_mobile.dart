import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/widgets/navigate_header.dart';
import 'package:myportfolio/widgets/skill_section_framework_card_mobile.dart';
import 'package:myportfolio/widgets/skill_section_platform_card_mobile.dart';
import 'package:myportfolio/widgets/skill_section_language_card_mobile.dart';

class SkillSectionMobile extends StatelessWidget {
  const SkillSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: listGlobalKey[1],
        child: Container(
          color: CustomColor.light,
          width: double.infinity,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 5),
                child: Text(
                  "My Skills",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.navBgEnd),
                ),
              ),
              //platforms and skills
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //platforms
                  PlatformCardMobile(),
                  SizedBox(
                    height: 20,
                  ),
                  //skills
                  LanguageCardMobile(),
                  SizedBox(
                    height: 20,
                  ),
                  //framework
                  FrameworkCardMobile(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
