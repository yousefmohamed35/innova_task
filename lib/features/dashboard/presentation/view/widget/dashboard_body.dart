import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/data/data.dart';
import 'package:invotask/features/dashboard/presentation/view/widget/custom_expansion_widget.dart';
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
          CustomExpansionWidget(
            title: Text(
              'Tasks Quick View',
              style: TextStyles.styleBold(context, color: Colors.black),
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: DataTable(columns: getColumns(columns), rows: []),
            ),
          )
        ],
      ),
    );
  }

 
}
