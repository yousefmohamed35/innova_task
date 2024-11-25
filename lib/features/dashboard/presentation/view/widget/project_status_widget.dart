import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

class ProjectStatusWidget extends StatelessWidget {
  const ProjectStatusWidget({
    super.key,
    required this.color,
    required this.status,
  });
  final int color;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(color),
      ),
      child: Text(
        status,
        style: TextStyles.styleMedium(
          context,
          fontSize: 10,
        ),
      ),
    );
  }
}
