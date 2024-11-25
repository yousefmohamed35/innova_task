import 'package:flutter/material.dart';

class UserDataModel {
  final String teamName;
  final String creatorName;
  final String creatorImage;
  final List<String> images;
  final String deadline;
  final String status;
  final List<IconData> actionIcons;

  UserDataModel(
      {required this.teamName,
      required this.creatorName,
      required this.creatorImage,
      required this.images,
      required this.deadline,
      required this.status,
      required this.actionIcons});
}
