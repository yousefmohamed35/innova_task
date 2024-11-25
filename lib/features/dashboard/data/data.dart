import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invotask/core/image.dart';
import 'package:invotask/core/text_style.dart';
import 'package:invotask/features/dashboard/presentation/models/dashboard_card_model.dart';
import 'package:invotask/features/dashboard/presentation/models/drawer_body_model.dart';
import 'package:invotask/features/dashboard/presentation/models/user_data_model.dart';

import '../presentation/models/projects_model.dart';

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

final List<String> columns = [
  'Team Names',
  'Creator',
  'Assigned to',
  'Deadline',
  'Status',
  'Action'
];

List<DataColumn> getColumns(List<String> columns) => columns
    .map((String column) => DataColumn(
          label: column == 'Action'
              ? Text(column)
              : Row(
                  children: [
                    Text(column),
                    SizedBox(width: 10.w),
                    SvgPicture.asset(AppImage.doubleArrowImage)
                  ],
                ),
        ))
    .toList();

final List<UserDataModel> row = [
  UserDataModel(
    teamName: 'Design Team',
    creatorName: 'Mohsin Faraz',
    creatorImage: AppImage.creatorImage,
    images: [AppImage.assigned1Image, AppImage.assigned2Image],
    deadline: 'Dec 26, 2023',
    status: 'On Going',
    actionIcons: [
      Icons.edit_outlined,
      Icons.message_outlined,
      Icons.folder_copy
    ],
  )
];

List<DataColumn> dataColumns = [
  DataColumn(
      label: Expanded(
    child: Row(
      children: [
        Text(
          'Research Name',
          style: TextStyles.styleMedium(BuildContext, fontSize: 14),
        ),
        SizedBox(
          width: 10.w,
        ),
        SvgPicture.asset(AppImage.doubleArrowWhiteImage),
      ],
    ),
  )),
  DataColumn(
      label: Row(
    children: [
      Text(
        'Status',
        style: TextStyles.styleMedium(BuildContext, fontSize: 14),
      ),
      SizedBox(
        width: 10.w,
      ),
      SvgPicture.asset(AppImage.doubleArrowWhiteImage),
    ],
  )),
];

List<ProjectsModel> projects = [
  ProjectsModel(
      name: 'First Research Project', status: 'On Going', color: 0xff40C3F4),
  ProjectsModel(
      name: 'Second Research Project', status: 'Delayed', color: 0xffFE861F),
  ProjectsModel(
      name: 'Third Research Project', status: 'Completed', color: 0xff53A501),
  ProjectsModel(
      name: 'Fourth Research Project', status: 'Delayed', color: 0xffFE861F),
  ProjectsModel(
      name: 'Fifth Research Project', status: 'Delayed', color: 0xffFE861F),
  ProjectsModel(
      name: 'Sixth Research Project', status: 'On Going', color: 0xff40C3F4),
  ProjectsModel(
      name: 'Seventh Research Project', status: 'Completed', color: 0xff53A501),
];
