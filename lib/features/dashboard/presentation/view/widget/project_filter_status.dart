import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

import 'project_status_widget.dart';

class ProjectFilterStatus extends StatelessWidget {
  const ProjectFilterStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(
            'Status :',
            style: TextStyles.styleMedium(context, fontSize: 14),
          ),
          SizedBox(width: 8),
          ProjectStatusWidget(color: 0xff53A501, status: 'Completed'),
          SizedBox(width: 8),
          ProjectStatusWidget(color: 0xffFE861F, status: 'Delayed'),
          SizedBox(width: 8),
          ProjectStatusWidget(color: 0xff40C3F4, status: 'On Going'),
          SizedBox(width: 8),
          ProjectStatusWidget(color: 0xffE044FF, status: 'On Hold'),
        ],
      ),
    );
  }
}
