import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/presentation/models/drawer_body_model.dart';

class NormalItem extends StatelessWidget {
  const NormalItem({
    super.key,
    required this.drawerBodyModel,
  });
  final DrawerBodyModel drawerBodyModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerBodyModel.image),
      title: drawerBodyModel.tile == 'Expenses'
          ? Row(
              children: [
                Text(
                  drawerBodyModel.tile,
                  style: TextStyles.styleMedium(context),
                ),
                SizedBox(height: 8),
                Card(
                  shape: RoundedRectangleBorder(),
                  color: Color(0xff474747),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Text(
                      'Coming soon',
                      style: TextStyles.styleRegular(context,
                          fontSize: 10,
                          color: Color(0xffFFFFFF).withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            )
          : Text(
              drawerBodyModel.tile,
              style: TextStyles.styleMedium(context),
            ),
    );
  }
}
