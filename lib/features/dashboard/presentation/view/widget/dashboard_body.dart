import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_app_bar.dart';
import 'dashboard_card_list_view.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 264.h,
          color: Colors.black,
          child: Column(
            children: [
              CustomAppBar(),
              Spacer(),
              SizedBox(
                height: 82.h,
                child: DashboardCardListView(),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ],
    );
  }
}

