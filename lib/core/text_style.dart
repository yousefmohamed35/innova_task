import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle styleRegular(context, {Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 16.sp,
      fontFamily: 'Metrophobic',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium(context, {Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 16.sp,
      fontFamily: 'Metrophobic',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold(context, {Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 16.sp,
      fontFamily: 'Metrophobic',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold(context, {Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 16.sp,
      fontFamily: 'Metrophobic',
      fontWeight: FontWeight.w700,
    );
  }
}
