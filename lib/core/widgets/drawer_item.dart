import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/presentation/models/drawer_body_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerBodyModel,
    this.children,
  });
  final DrawerBodyModel drawerBodyModel;
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      leading: SvgPicture.asset(drawerBodyModel.image),
      title: Text(
        drawerBodyModel.tile,
        style: TextStyles.styleMedium(context),
      ),
      children: children ??
          [
            SizedBox(
              height: 10,
            )
          ],
    );
  }
}
