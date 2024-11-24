import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invotask/core/image.dart';

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
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(AppImage.profileImage),
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
