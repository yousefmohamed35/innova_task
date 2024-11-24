import 'package:flutter/material.dart';

import 'package:invotask/core/widgets/custom_drawer_header.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            shape: RoundedRectangleBorder(),
            child: Column(
              children: [
                CustomDrawerHeader(),
              ],
            )),
      ),
    );
  }
}
