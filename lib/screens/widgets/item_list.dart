import 'package:flutter/material.dart';

import 'package:flutter_thirty_days/globals/app_colors.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.primaryColor,
        ),
        height: 150,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
