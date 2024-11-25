import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

import 'custom_body_expansion_widget_one.dart';
import 'custom_expansion_widget.dart';

class ExpansionWidgetOne extends StatelessWidget {
  const ExpansionWidgetOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionWidget(
      title: Text(
        'Recently assigned',
        style: TextStyles.styleBold(context, color: Colors.black),
      ),
      child: Column(
        children: [
          Divider(),
          CustomBodyExpansionWidgetOne(),
          CustomExpansionWidget(
            color: Colors.white,
            title: Text(
              'To ensure your health safety',
              overflow: TextOverflow.ellipsis,
            ),
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
