import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/widgets/navigate_to_github.dart';
import 'package:myportfolio/widgets/navigate_header.dart';

class HeroSectionDesktop extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const HeroSectionDesktop(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: listGlobalKey[0],
        child: Container(
          //key: listGlobalKey[0],
          height: 420,
          width: double.infinity,
          color: CustomColor.light,
          child: Row(
            children: [
              //left side (text + buttons)
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth > 1000 ? 150 : 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, I'm Trịnh Phúc Hậu",
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          launchURL(
                              'https://drive.google.com/file/d/1tif0kX4vnWUw5xAAOAcCJw6JdqX_y38r/view?usp=sharing');
                        },
                        style: OutlinedButton.styleFrom(
                            fixedSize: const Size(130, 50),
                            backgroundColor: CustomColor.buttonSecondary,
                            foregroundColor: CustomColor.textPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Text(
                          "View CV",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //right side image
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Container(
                        width: screenWidth >= 1000
                            ? screenWidth / 4
                            : screenWidth / 3,
                        height: screenWidth >= 1000
                            ? screenWidth / 4
                            : screenWidth / 3,
                        decoration: BoxDecoration(
                          color: CustomColor.buttonSecondary,
                          borderRadius: BorderRadius.circular(
                              screenWidth >= 1000
                                  ? screenWidth / 4
                                  : screenWidth / 3),
                        ),
                        child: Image.asset("assets/avata.png"),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
