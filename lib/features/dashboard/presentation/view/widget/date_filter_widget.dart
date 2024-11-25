import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/widgets/calendar_widget.dart';

class DateFilterWidget extends StatelessWidget {
  const DateFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.h,
      width: 311.w,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          CalendarWidget(
            title: 'Deadline:',
            name: 'Starting Date',
          ),
          SizedBox(
            width: 5,
          ),
          CalendarWidget(
            title: 'Until:',
            name: 'Ending Date',
          ),
        ],
      ),
    );
  }
}
