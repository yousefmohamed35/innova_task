import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/text_style.dart';

class CustomTrailDrawer extends StatelessWidget {
  const CustomTrailDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.logout,
            color: Color(0xffB4B4B4),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Sign Out',
            style: TextStyles.styleMedium(
              context,
              color: Color(0xffB4B4B4),
            ),
          ),
        ],
      ),
    );
  }
}
