import 'package:flutter/material.dart';
import 'package:invotask/core/widgets/drawer/custom_drawer.dart';
import 'package:invotask/features/dashboard/presentation/view/widget/dashboard_body.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        drawerScrimColor: Colors.white.withOpacity(.8),
        body: DashboardBody(),
      ),
    );
  }
}
