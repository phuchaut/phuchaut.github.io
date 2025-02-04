import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/style/decoration.dart';
import 'package:myportfolio/widgets/site_name_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLoGoTap, this.onMenuTap});
  final VoidCallback? onLoGoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return //header mobile
        SliverAppBar(
      pinned: true,
      iconTheme: const IconThemeData(
        color: CustomColor.light,
      ),
      automaticallyImplyLeading: false,
      leading: null,
      backgroundColor: Colors.transparent,
      elevation: 0,
      floating: true,
      snap: true,
      toolbarHeight: 50,
      flexibleSpace: Container(
        height: 50,
        width: double.infinity,
        decoration: kNavGradientBoxDecoration,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SiteNameLogo(
                onTap: onLoGoTap,
              ),
            ),
            // const Spacer(),
            // Container(
            //   width: 60,
            //   decoration: BoxDecoration(
            //       color: CustomColor.navButtonBG,
            //       borderRadius: BorderRadius.circular(100)),
            //   child: IconButton(
            //     icon: const Icon(
            //       Icons.menu,
            //       color: CustomColor.light,
            //     ),
            //     onPressed: onMenuTap,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
