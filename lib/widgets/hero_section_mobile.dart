import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/widgets/navigate_to_github.dart';
import 'package:myportfolio/widgets/navigate_header.dart';

class HeroSectionMobile extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const HeroSectionMobile(
      {super.key, required this.screenHeight, required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    //define mingheight constraint
    double minHeight = 450;

    //adjust height based on screen width, keeping only minHeight in place
    return KeyedSubtree(
        key: listGlobalKey[0],
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:
                minHeight, //only the minimun height constraints is applied
          ),
          child: Container(
              width: double.infinity,
              height: minHeight * 0.5,
              color: CustomColor.light,
              padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //picture (above text for mobile)
                    Container(
                      width: minHeight * 0.5,
                      height: minHeight * 0.5,
                      decoration: const BoxDecoration(
                          color: CustomColor.buttonPrimary,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/avata.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),

                    //greeting text
                    Text(
                      "Hi, I'm Trịnh Phúc Hậu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: minHeight * 0.05,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.bgDark,
                          height: 1.5),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        launchURL(
                            'https://drive.google.com/file/d/1tif0kX4vnWUw5xAAOAcCJw6JdqX_y38r/view?usp=sharing');
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(130, 40),
                        backgroundColor: CustomColor.buttonSecondary,
                        foregroundColor: CustomColor.textPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: Text(
                        "View CV",
                        style: TextStyle(
                            fontSize: minHeight * 0.035,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ])),
        ));
  }
}
