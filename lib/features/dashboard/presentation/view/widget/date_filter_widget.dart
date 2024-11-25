import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/widgets/calendar_widget.dart';

class DateFilterWidget extends StatelessWidget {
  const DateFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 93.h,
        width: 311.w,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalendarWidget(
              title: 'Deadline:',
              name: 'Starting Date',
            ),
            CalendarWidget(
              title: 'Until:',
              name: 'Ending Date',
            ),
          ],
        ),
      ),
    );
  }
}
