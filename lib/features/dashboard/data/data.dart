import 'package:flutter/material.dart';
import 'package:invotask/core/image.dart';
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
