import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/core/text_style.dart';

class CustomBodyExpansionWidgetOne extends StatelessWidget {
  const CustomBodyExpansionWidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Update',
                style: TextStyles.styleMedium(
                  context,
                  color: Color(0xff474747),
                ),
              ),
              SizedBox(width: 10.w),
              SvgPicture.asset(AppImage.doubleArrowImage),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              color: Colors.white,
            ),
            child: Text(
              'Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 /LHR’s temperature in the morning and it was 98 degrees Fahrenheit.',
              style: TextStyles.styleMedium(
                context,
                color: Color(0xff474747),
                fontSize: 14.sp,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              color: Colors.black,
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppImage.calendarImage),
                SizedBox(width: 10.h),
                Text(
                  'Mon, 10 July 2022',
                  style: TextStyles.styleMedium(context, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
