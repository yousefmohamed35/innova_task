import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/data/data.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columns: getColumns(columns),
        rows: List.generate(10, (index) {
          return DataRow(cells: [
            DataCell(
              Text(row[0].teamName),
            ),
            DataCell(
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage:
                          AssetImage(row[0].creatorImage),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    row[0].creatorName,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            DataCell(
                //showEditIcon: true,
                Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(row[0].images[0]),
                ),
                Positioned(
                  right: -20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(row[0].images[1]),
                  ),
                ),
                Positioned(
                  right: -40,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xff474747),
                      child: Text(
                        '1+',
                        style: TextStyles.styleSemiBold(
                          context,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
            DataCell(
              Text(row[0].deadline),
            ),
            DataCell(
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueAccent,
                ),
                child: Text(
                  row[0].status,
                  style: TextStyles.styleMedium(
                    context,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            DataCell(
              Row(
                children: List.generate(row[0].actionIcons.length,
                    (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(row[0].actionIcons[index]),
                  );
                }),
              ),
            ),
          ]);
        }));
  }
}
