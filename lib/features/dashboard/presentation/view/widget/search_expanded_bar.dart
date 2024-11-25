import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/data/data.dart';
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

class CustomProjectTable extends StatelessWidget {
  const CustomProjectTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
        child: DataTable(
            headingRowColor: WidgetStatePropertyAll(Color(0xff474747)),
            columns: dataColumns,
            rows: List.generate(projects.length, (index) {
              return DataRow(cells: [
                DataCell(
                  Text(
                    projects[index].name,
                    style: TextStyles.styleMedium(context,
                        fontSize: 14, color: Colors.black),
                  ),
                ),
                DataCell(
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(projects[index].color),
                    ),
                    child: Text(
                      projects[index].status,
                      style: TextStyles.styleMedium(
                        context,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ]);
            })),
      ),
    );
  }
}
