import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration:
          const BoxDecoration(color: AppColors.blue, shape: BoxShape.circle),
      child: Center(child: Text(title)),
    );
  }
}
