import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.child,
    required this.borderRadius,
    required this.onTapUp,
    required this.onTapDown,
    required this.onTapCancel,
    required this.onTap,
  }) : super(key: key);

  final Widget child;
  final BorderRadius borderRadius;
  final void Function(TapUpDetails) onTapUp;
  final void Function(TapDownDetails) onTapDown;
  final VoidCallback onTapCancel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      onTapCancel: onTapCancel,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
