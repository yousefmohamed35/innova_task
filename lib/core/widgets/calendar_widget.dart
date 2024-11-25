import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/image.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({
    super.key,
    required this.title,
    required this.name,
  });
  final String title;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              SizedBox(width: 8),
              SvgPicture.asset(AppImage.blackCalendarImage),
            ],
          ),
        )
      ],
    );
  }
}
