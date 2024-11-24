import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/core/text_style.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.h,
      alignment: Alignment.center,
      color: Colors.black,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25.sp,
          backgroundImage: AssetImage(AppImage.profileImage),
        ),
        title: Text(
          'Mohsin Faraz',
          style: TextStyles.styleSemiBold(context),
        ),
        subtitle: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            textAlign: TextAlign.center,
            'Senior Research Associate',
            style: TextStyles.styleRegular(
              context,
              fontSize: 12.sp,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
