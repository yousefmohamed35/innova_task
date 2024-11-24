import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            child: Column(
          children: [
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  child: Svg,
                ),
                title: Text('mohsen'),
                subtitle: Text('senior'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
