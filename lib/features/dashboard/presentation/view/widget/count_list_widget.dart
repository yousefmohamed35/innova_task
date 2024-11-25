import 'package:flutter/material.dart';

class CountListWidget extends StatelessWidget {
  const CountListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.black),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text('  10'),
          SizedBox(width: 6),
          Icon(
            Icons.expand_more,
          ),
        ],
      ),
    );
  }
}
