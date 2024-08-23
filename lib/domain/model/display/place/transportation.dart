import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_colors.dart';

enum Transportation {
  car("car", "차", AppColors.error, Icons.directions_car),
  walk("walk", "도보", AppColors.positive, Icons.directions_walk);

  const Transportation(this.code, this.name, this.textColor, this.icon);

  final String code;
  final String name;
  final Color textColor;
  final IconData icon;
}
