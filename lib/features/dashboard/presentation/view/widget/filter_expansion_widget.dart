import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

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
