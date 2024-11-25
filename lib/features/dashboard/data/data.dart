import 'package:flutter/material.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/features/dashboard/presentation/models/dashboard_card_model.dart';
import 'package:invotask/features/dashboard/presentation/models/drawer_body_model.dart';

List<DrawerBodyModel> drawerBodyList = [
  DrawerBodyModel(
    tile: 'Researsh',
    image: AppImage.reaserchImage,
    iconData: Icons.keyboard_arrow_down_outlined,
  ),
  DrawerBodyModel(
    tile: 'Laboratory',
    image: AppImage.labImage,
    iconData: Icons.keyboard_arrow_down_outlined,
  ),
  DrawerBodyModel(
    tile: 'Task',
    image: AppImage.taskImage,
    iconData: Icons.keyboard_arrow_down_outlined,
  ),
  DrawerBodyModel(
    tile: 'Data',
    image: AppImage.dataImage,
    iconData: Icons.keyboard_arrow_down_outlined,
  ),
  DrawerBodyModel(
    tile: 'Discussion',
    image: AppImage.discussionImage,
    iconData: Icons.keyboard_arrow_down_outlined,
  ),
  DrawerBodyModel(
    tile: 'Publish',
    image: AppImage.publishImage,
    iconData: Icons.keyboard_arrow_down_outlined,
  ),
  DrawerBodyModel(
    tile: 'Expenses',
    image: AppImage.expensesImage,
  ),
  DrawerBodyModel(
    tile: 'Setting',
    image: AppImage.settingImage,
  ),
  DrawerBodyModel(
    tile: 'Ticketing',
    image: AppImage.ticketingImage,
  ),
];

List<DashboardCardModel> dashboardCardList = [
  DashboardCardModel(image: AppImage.userImage, text: 'User Involoved'),
  DashboardCardModel(
      image: AppImage.equipmentImage, text: 'Equipment Available'),
  DashboardCardModel(image: AppImage.tasksImage, text: 'Tasks Completed'),
  DashboardCardModel(image: AppImage.tasksImage, text: 'Tasks Completed'),
  DashboardCardModel(
      image: AppImage.equipmentImage, text: 'Equipment Available'),
  DashboardCardModel(image: AppImage.userImage, text: 'User Involoved'),
];
