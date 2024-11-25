import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/data/data.dart';
import 'custom_project_table.dart';
import 'filter_expansion_widget.dart';
import 'search_row.dart';

class SearchExpandedBar extends StatefulWidget {
  const SearchExpandedBar({super.key, required this.onExpansionChanged});
  final ValueChanged<bool> onExpansionChanged;

  @override
  State<SearchExpandedBar> createState() => _SearchExpandedBarState();
}

class _SearchExpandedBarState extends State<SearchExpandedBar> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        onExpansionChanged: widget.onExpansionChanged,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        leading: Icon(
          Icons.search,
        ),
        title: Text(
          'Test Project with Mohsin',
          style: TextStyles.styleSemiBold(context,
              fontSize: 14, color: Color(0xff474747)),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(top: 8),
            color: Color(0xff474747),
            child: Column(
              children: [
                if (!isExpanded) SearchRow(),
                FilterExpansionWidget(
                  onExpansionChanged: (bool value) {
                    setState(() {
                      isExpanded = value;
                    });
                  },
                ),
                Divider(),
              ],
            ),
          ),
          CustomProjectTable(),
        ],
      ),
    );
  }
}

