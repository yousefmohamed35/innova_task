import 'package:flutter/material.dart';
import '../../../../../core/text_style.dart';
import 'custom_data_table.dart';
import 'custom_expansion_widget.dart';

class ExpansionWidgetTwo extends StatelessWidget {
  const ExpansionWidgetTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionWidget(
      title: Text(
        'Tasks Quick View',
        style: TextStyles.styleBold(context, color: Colors.black),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomDataTable(),
          ),
        ),
      ),
    );
  }
}

