import 'package:flutter/material.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/core/widgets/drawer/drawer_item.dart';
import 'package:invotask/core/widgets/drawer/normal_item.dart';
import 'package:invotask/core/widgets/drawer/sub_item.dart';
import 'package:invotask/features/dashboard/data/data.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerBodyList.length,
        itemBuilder: (context, index) {
          return index <= 5
              ? DrawerItem(
                  drawerBodyModel: drawerBodyList[index],
                  children: [
                    SubItemWidget(
                      image: AppImage.newProjectImage,
                      title: 'New Project',
                    ),
                    SubItemWidget(
                      image: AppImage.myProjectImage,
                      title: 'My Project',
                    ),
                  ],
                )
              : NormalItem(
                  drawerBodyModel: drawerBodyList[index],
                );
        });
  }
}
