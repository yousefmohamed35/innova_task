import 'package:flutter/material.dart';
import 'package:invotask/core/widgets/drawer/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: CustomDrawer(),
      ),
    );
  }
}
