import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';

class CButton extends StatelessWidget {
  const CButton({
    Key? key,
    this.onTap,
    this.textStyle,
    this.width = 150.0,
    this.height = 50.0,
    this.borderRadius = 8.0,
    required this.buttonName,
    this.buttonAnimation = false,
    this.textColor = AppColors.textColor,
    this.buttonColor = AppColors.buttonColor,
  }) : super(key: key);

  final double width;
  final double height;
  final Color? textColor;
  final String buttonName;
  final Color? buttonColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final bool buttonAnimation;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius:
          BorderRadius.circular(buttonAnimation ? 50.0 : borderRadius),
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: buttonAnimation ? 50 : width,
          height: height,
          alignment: Alignment.center,
          child: buttonAnimation
              ? const Icon(
                  Icons.done,
                  color: AppColors.iconColor,
                )
              : Text(buttonName,
                  style: textStyle ??
                      Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: textColor, fontSize: 16.5)),
        ),
      ),
    );
  }
}
