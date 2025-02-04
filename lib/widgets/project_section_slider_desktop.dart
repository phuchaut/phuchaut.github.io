import 'package:flutter/material.dart';

class VerticalTimelineSliderDesktop extends StatelessWidget {
  final int currentIndex;
  final Function(int) onSelected;
  final List<Map<String, String>> timelineData;
  const VerticalTimelineSliderDesktop(
      {super.key,
      required this.currentIndex,
      required this.onSelected,
      required this.timelineData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(timelineData.length, (index) {
        bool isSelected = currentIndex == index;

        return GestureDetector(
          onTap: () => onSelected(index),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      //vertical line above the dot (hidden for the first item)
                      if (index > 0)
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      //dot
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: isSelected ? 14 : 10,
                        height: isSelected ? 14 : 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected
                                ? Colors.green
                                : Colors.grey.withOpacity(0.5)),
                      ),
                      if (index < timelineData.length - 1)
                        Container(
                          height: 40,
                          width: 2,
                          color: Colors.grey.withOpacity(0.5),
                        )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AnimatedDefaultTextStyle(
                      style: TextStyle(
                          fontSize: isSelected ? 14 : 12,
                          color: isSelected ? Colors.green : Colors.grey,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal),
                      duration: const Duration(milliseconds: 300),
                      child: Text(timelineData[index]['year']!))
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
