import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/features/dashboard/presentation/view/widget/search_expanded_bar.dart';
import 'dashboard_header.dart';
import 'expansion_widget_one.dart';
import 'expansion_widget_two.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                DashboardHeader(),
                SizedBox(
                  height: 30.h,
                ),
                ExpansionWidgetOne(),
                ExpansionWidgetTwo(),
              ],
            ),
            isExpanded
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.6)
                    // Semi-transparent background
                    )
                : SizedBox(),
            Positioned(
              top: MediaQuery.of(context).size.height * .1,
              left: 16.w,
              right: 16.w,
              child: SearchExpandedBar(
                onExpansionChanged: (value) {
                  setState(() {
                    isExpanded = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
