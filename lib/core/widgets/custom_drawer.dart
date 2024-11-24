import 'package:flutter/material.dart';
import 'package:invotask/core/widgets/drawer_body.dart';
import 'custom_drawer_header.dart';
import 'custom_trail_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
