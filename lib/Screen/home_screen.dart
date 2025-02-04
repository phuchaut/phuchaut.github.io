import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/style/size.dart';
import 'package:myportfolio/widgets/contact_section_desktop.dart';
import 'package:myportfolio/widgets/contact_section_mobile.dart';
import 'package:myportfolio/widgets/drawer_mobile.dart';
import 'package:myportfolio/widgets/header_desktop.dart';
import 'package:myportfolio/widgets/header_mobile.dart';
import 'package:myportfolio/widgets/hero_section_desktop.dart';
import 'package:myportfolio/widgets/hero_section_mobile.dart';
import 'package:myportfolio/widgets/project_section_desktop.dart';
import 'package:myportfolio/widgets/project_section_mobile.dart';
import 'package:myportfolio/widgets/skill_section_desktop.dart';
import 'package:myportfolio/widgets/skill_section_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  //ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: _scaffoldKey,
        backgroundColor: CustomColor.navBg,
        endDrawer: constraints.maxWidth > kMinDesktopMaxWidth
            ? null
            : const DrawerMobile(),
        body: CustomScrollView(
          slivers: [
            //navigationbar
            if (constraints.maxWidth > kMinDesktopMaxWidth)
              const HeaderDesktop(),
            if (constraints.maxWidth <= kMinDesktopMaxWidth)
              HeaderMobile(
                onLoGoTap: () {},
                onMenuTap: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              ),

            //hero section
            SliverToBoxAdapter(
              child: constraints.maxWidth > kMinDesktopMaxWidth
                  ? HeroSectionDesktop(
                      screenHeight: screenHeight, screenWidth: screenWidth)
                  : HeroSectionMobile(
                      screenHeight: screenHeight, screenWidth: screenWidth),
            ),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 1,
            )),

            //skill section
            SliverToBoxAdapter(
              child: constraints.maxWidth > kMinDesktopMaxWidth
                  ? const SkillSectionDesktop()
                  : const SkillSectionMobile(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 1,
              ),
            ),
            //dark section (projects)
            SliverToBoxAdapter(
              child: constraints.maxWidth > kMinDesktopMaxWidth
                  ? const ProjectSectionDesktop()
                  : const ProjectSectionMobile(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 1,
              ),
            ),
            //light section (contact)
            SliverToBoxAdapter(
              child: constraints.maxWidth > kMinDesktopMaxWidth
                  ? ContactSectionDesktop(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    )
                  : const ContactSectionMobile(),
            ),

            //footer
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                width: double.infinity,
                color: CustomColor.bgDark,
                child: const Center(
                  child: Text(
                    "© 2025 Trịnh Phúc Hậu",
                    style:
                        TextStyle(color: CustomColor.textPrimary, fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
