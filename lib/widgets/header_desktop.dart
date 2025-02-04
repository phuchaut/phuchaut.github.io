import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/nav_items.dart';
import 'package:myportfolio/style/decoration.dart';
import 'package:myportfolio/widgets/navigate_header.dart';
import 'package:myportfolio/widgets/site_name_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    //navigation bar
    return SliverAppBar(
        pinned: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        floating: true,
        snap: true,
        toolbarHeight: 65,
        flexibleSpace: Container(
          height: 65,
          //margin: EdgeInsets.only(top: 7),
          decoration: kNavGradientBoxDecoration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //name
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SiteNameLogo(
                  onTap: () {},
                ),
              ),
              const Spacer(),
              //navigation buttons
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: CustomColor.navButtonBG,
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  children: [
                    for (int i = 0; i < navItems.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: const Size(110, 50),
                          ),
                          onPressed: () {
                            scrollToSection(listGlobalKey[i]);
                          },
                          child: Text(
                            navItems[i],
                            style: const TextStyle(
                                color: CustomColor.navButtonTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
