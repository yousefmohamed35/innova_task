import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/data/data.dart';
import 'package:invotask/features/dashboard/presentation/view/widget/project_status_widget.dart';

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
                  ProjectStatusWidget(
                    color: projects[index].color,
                    status: projects[index].status,
                  ),
                ),
              ]);
            })),
      ),
    );
  }
}

