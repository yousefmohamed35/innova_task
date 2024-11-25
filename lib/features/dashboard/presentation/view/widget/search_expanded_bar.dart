import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/data/data.dart';
import 'search_row.dart';

class SearchExpandedBar extends StatelessWidget {
  const SearchExpandedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        shape: Border.all(width: 0),
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
            padding: EdgeInsets.all(8),
            color: Color(0xff474747),
            child: Column(
              children: [
                SearchRow(),
                FilterExpansionWidget(),
                Divider(),
                DataTable(columns: dataColumns, rows: [])
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FilterExpansionWidget extends StatelessWidget {
  const FilterExpansionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Project List',
        style: TextStyles.styleBold(context),
      ),
      trailing: Icon(
        Icons.filter_list,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
