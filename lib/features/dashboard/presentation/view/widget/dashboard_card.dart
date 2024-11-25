import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/presentation/models/dashboard_card_model.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.dashboardCard,
  });
  final DashboardCardModel dashboardCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.only(top: 12),
      height: 82.h,
      width: 103.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(dashboardCard.image),
              SizedBox(
                width: 10.w,
              ),
              Text(
                '1125',
                style: TextStyles.styleBold(
                  context,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: Colors.grey.shade300,
            ),
            child: Text(
              textAlign: TextAlign.center,
              dashboardCard.text,
              style: TextStyles.styleBold(
                context,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
