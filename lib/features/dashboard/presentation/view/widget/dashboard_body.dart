import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dashboard_header.dart';
import 'expansion_widget_one.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DashboardHeader(),
          SizedBox(
            height: 30.h,
          ),
          ExpansionWidgetOne(),
        ],
      ),
    );
  }
}
