import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/text_style.dart';

class SubItemWidget extends StatelessWidget {
  const SubItemWidget({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: TextStyles.styleMedium(context, color: Colors.black),
      ),
    );
  }
}
