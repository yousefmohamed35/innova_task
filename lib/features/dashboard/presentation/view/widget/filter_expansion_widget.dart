import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/core/widgets/custom_button.dart';
import 'date_filter_widget.dart';
import 'project_filter_status.dart';
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
      shape: Border.all(width: 0),
      onExpansionChanged: onExpansionChanged,
      childrenPadding: EdgeInsets.symmetric(horizontal: 16),
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
        SizedBox(height: 16),
        DateFilterWidget(),
        SizedBox(height: 16),
        ProjectFilterStatus(),
        SizedBox(height: 16),
        CustomButton(),
      ],
    );
  }
}
