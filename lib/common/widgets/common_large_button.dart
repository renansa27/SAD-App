import 'package:sad_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class CommonLargeButton extends StatelessWidget {
  final String? text;
  final Color? btnTextColor;
  final VoidCallback onPressed;
  final bool? isLoading;
  final double margin;
  final Color? color;
  final Gradient? gradientColor;
  final IconData? iconData;

  const CommonLargeButton({
    super.key,
    required this.text,
    this.btnTextColor,
    required this.onPressed,
    this.isLoading = false,
    this.margin = 0,
    this.color,
    this.gradientColor = AppColors.turquoiseTohalloweenOrange,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: margin),
            child: Container(
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                color: color,
                gradient: color == null ? gradientColor : null,
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange[700]!.withOpacity(0.25),
                    offset: const Offset(0, 4),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: TextButton(
                onPressed: onPressed,
                child: Center(
                  child: isLoading!
                      ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.canvasColor,
                          ),
                        )
                      : _Text(
                          text,
                          iconData: iconData,
                          textColor: btnTextColor,
                        ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final IconData? iconData;

  const _Text(this.text, {this.textColor, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (iconData != null)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text!,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 17,
                      letterSpacing: 0.16,
                      color: textColor ?? AppColors.loginBtnTextColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
