import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

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
        children: [],
      ),
    );
  }
}
