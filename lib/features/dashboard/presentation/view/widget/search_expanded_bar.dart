import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/core/widgets/text_field_widget.dart';

import 'custom_count_list_widget.dart';

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
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40.h,
                        child: TextFieldWidget(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCountListWidget()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

