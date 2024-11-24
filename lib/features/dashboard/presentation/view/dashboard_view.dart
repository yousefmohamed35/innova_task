import 'package:flutter/material.dart';
import 'package:invotask/core/widgets/custom_drawer_header.dart';
import 'package:invotask/core/widgets/custom_trail_drawer.dart';
import 'package:invotask/core/widgets/drawer_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          drawer: Drawer(
            backgroundColor: Color(0xff474747),
            shape: RoundedRectangleBorder(),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomDrawerHeader(),
                ),
                DrawerBody(),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Expanded(child: SizedBox()),
                      CustomTrailDrawer(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
