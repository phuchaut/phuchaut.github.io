import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/timeline_project.dart';
import 'package:myportfolio/widgets/navigate_to_github.dart';
import 'package:myportfolio/widgets/navigate_header.dart';
import 'package:myportfolio/widgets/project_section_slider_mobile.dart';

class ProjectSectionMobile extends StatefulWidget {
  const ProjectSectionMobile({super.key});
  @override
  ProjectSectionMobileState createState() => ProjectSectionMobileState();
}

class ProjectSectionMobileState extends State<ProjectSectionMobile> {
  int _currentSlideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: listGlobalKey[2],
        child: Container(
          width: double.infinity,
          color: CustomColor.light,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //title
                const Text(
                  "Projects",
                  style: TextStyle(
                      color: CustomColor.navBgEnd,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),

                //image slider
                SizedBox(
                  width: 450,
                  height: 300,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        CustomColor.subColor.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              projectTimeline[_currentSlideIndex]['img']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //horizontal timeline slider
                HorizontalTimelineSliderMobile(
                    currentIndex: _currentSlideIndex,
                    onSelected: (index) {
                      setState(() {
                        _currentSlideIndex = index;
                      });
                    },
                    projectTimeline: projectTimeline),
                const SizedBox(height: 14),

                //text: title and paragraph
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(
                        projectTimeline[_currentSlideIndex]['header']!,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.subColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        projectTimeline[_currentSlideIndex]['description']!,
                        style: const TextStyle(
                            fontSize: 16,
                            color: CustomColor.subColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            launchURL(
                                projectTimeline[_currentSlideIndex]['url']!);
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(130, 40),
                              foregroundColor: CustomColor.light,
                              backgroundColor: CustomColor.buttonSecondary),
                          child: const Text(
                            'Read more',
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
