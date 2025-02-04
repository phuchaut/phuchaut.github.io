import 'package:flutter/material.dart';

class HorizontalTimelineSliderMobile extends StatelessWidget {
  final int currentIndex;
  final Function(int) onSelected;
  final List<Map<String, String>> projectTimeline;
  const HorizontalTimelineSliderMobile(
      {super.key,
      required this.currentIndex,
      required this.onSelected,
      required this.projectTimeline});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(projectTimeline.length, (index) {
          bool isSelected = currentIndex == index;

          return GestureDetector(
            onTap: () => onSelected(index),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //dot
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: isSelected ? 14 : 10,
                      height: isSelected ? 14 : 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSelected
                              ? Colors.green
                              : Colors.grey.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),

                    //year
                    AnimatedDefaultTextStyle(
                        style: TextStyle(
                            color: isSelected ? Colors.green : Colors.grey,
                            fontSize: isSelected ? 14 : 12,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal),
                        duration: const Duration(milliseconds: 300),
                        child: Text(projectTimeline[index]['year']!))
                  ],
                ),
                //line between dots
                if (index < projectTimeline.length - 1)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 2,
                    width: 40,
                    color: Colors.grey.withOpacity(0.5),
                  )
              ],
            ),
          );
        }),
      ),
    );
  }
}
