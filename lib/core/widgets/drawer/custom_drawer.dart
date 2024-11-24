import 'package:flutter/material.dart';
import 'package:invotask/core/widgets/drawer/drawer_body.dart';
import 'custom_drawer_header.dart';
import 'custom_trail_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF2D2D2D),
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
    );
  }
}
