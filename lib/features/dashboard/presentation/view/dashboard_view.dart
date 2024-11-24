import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/core/widgets/custom_drawer_header.dart';
import 'package:invotask/core/widgets/custom_trail_drawer.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomDrawerHeader(),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(20, (index) {
                      return ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        title: Text('Researsh'),
                      );
                    }),
                  ),
                  CustomTrailDrawer(),
                ],
              ),
            )),
      ),
    );
  }
}
