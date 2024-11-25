import 'package:flutter/material.dart';
import 'package:invotask/features/dashboard/data/data.dart';

import 'dashboard_card.dart';

class DashboardCardListView extends StatelessWidget {
  const DashboardCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 16),
        itemCount: dashboardCardList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DashboardCard(dashboardCard: dashboardCardList[index],);
        });
  }
}

