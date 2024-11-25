import 'package:flutter/material.dart';

class ExpansionUp extends StatelessWidget {
  const ExpansionUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.black),
        child: Icon(
          Icons.expand_less,
          color: Colors.white,
        ));
  }
}
