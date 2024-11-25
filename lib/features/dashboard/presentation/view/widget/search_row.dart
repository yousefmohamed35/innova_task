import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/widgets/text_field_widget.dart';

import 'custom_count_list_widget.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
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
    );
  }
}
