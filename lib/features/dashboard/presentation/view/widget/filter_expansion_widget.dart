import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/core/widgets/calendar_widget.dart';

import 'search_row.dart';

class FilterExpansionWidget extends StatelessWidget {
  const FilterExpansionWidget({
    super.key,
    required this.onExpansionChanged,
  });
  final ValueChanged<bool> onExpansionChanged;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: onExpansionChanged,
      title: Text(
        'Project List',
        style: TextStyles.styleBold(context),
      ),
      trailing: Icon(
        Icons.filter_list,
        color: Colors.white,
        size: 30,
      ),
      children: [
        SearchRow(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalendarWidget(
                title: 'Deadline:',
                name: 'Starting Date',
              ),
              CalendarWidget(
                title: 'Until:',
                name: 'Ending Date',
              ),
            ],
          ),
        )
      ],
    );
  }
}

