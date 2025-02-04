import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/timeline_project.dart';
import 'package:myportfolio/widgets/navigate_to_github.dart';
import 'package:myportfolio/widgets/navigate_header.dart';
import 'package:myportfolio/widgets/project_section_slider_desktop.dart';

class ProjectSectionDesktop extends StatefulWidget {
  const ProjectSectionDesktop({super.key});
  @override
  ProjectSectionDesktopState createState() => ProjectSectionDesktopState();
}

class ProjectSectionDesktopState extends State<ProjectSectionDesktop> {
  int _currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: listGlobalKey[2],
        child: Container(
          // key: listGlobalKey[2],
          width: double.infinity,
          color: CustomColor.light,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Projects",
                  style: TextStyle(
                      color: CustomColor.subColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 420,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Left side: text content
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //title
                              Text(
                                projectTimeline[_currentSlideIndex]['header']!,
                                style: const TextStyle(
                                    color: CustomColor.subColor,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              //dynamic text (sumary)
                              Text(
                                  projectTimeline[_currentSlideIndex]
                                      ['description']!,
                                  style: const TextStyle(
                                    color: CustomColor.subColor,
                                    fontSize: 22,
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              //read more button
                              ElevatedButton(
                                  onPressed: () {
                                    launchURL(
                                        projectTimeline[_currentSlideIndex]
                                            ['url']!);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(130, 50),
                                      backgroundColor:
                                          CustomColor.buttonSecondary),
                                  child: const Text(
                                    "Read more",
                                    style: TextStyle(color: CustomColor.light),
                                  ))
                            ],
                          )),
                      //right side: slideshow for images and slider
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            //image
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 450,
                                height: 350,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: CustomColor.subColor
                                              .withOpacity(0.1),
                                          blurRadius: 10,
                                          offset: const Offset(0, 5))
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    projectTimeline[_currentSlideIndex]['img']!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            //slider positioned correctly within stack
                            Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: VerticalTimelineSliderDesktop(
                                  currentIndex: _currentSlideIndex,
                                  onSelected: (index) {
                                    setState(() {
                                      _currentSlideIndex = index;
                                    });
                                  },
                                  timelineData: projectTimeline),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
