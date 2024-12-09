import 'package:sad_app/app/modules/home/widgets/custom_button.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatefulWidget {
  const CommonCard({
    Key? key,
    this.height,
    required this.borderRadius,
    this.padding,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  final double? height;
  final BorderRadius borderRadius;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final Widget child;

  @override
  State<CommonCard> createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  final _unpressedBermudaGreyShadowOffset = const Offset(2, 2);
  final _pressedShadowOffset = const Offset(0, 0);

  final Duration _animationDuration = const Duration(milliseconds: 50);

  late Offset _bermudaGreyShadowOffset;

  @override
  void initState() {
    super.initState();

    _bermudaGreyShadowOffset = _unpressedBermudaGreyShadowOffset;
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      borderRadius: widget.borderRadius,
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      onTapCancel: _onTapCancel,
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: _animationDuration,
        child: Container(
          padding: widget.padding,
          height: widget.height,
          decoration: BoxDecoration(
            gradient: AppColors.turquoiseTohalloweenOrange,
            borderRadius: widget.borderRadius,
            boxShadow: [
              BoxShadow(
                color: AppColors.halloweenOrange,
                offset: _bermudaGreyShadowOffset,
                blurRadius: 10,
              ),
            ],
          ),
          child: widget.child,
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _setPressed();
  }

  void _onTapUp(TapUpDetails details) {
    _setUnpressed();
  }

  void _onTapCancel() {
    _setUnpressed();
  }

  void _setUnpressed() {
    setState(
      () {
        _bermudaGreyShadowOffset = _unpressedBermudaGreyShadowOffset;
      },
    );
  }

  void _setPressed() {
    setState(
      () {
        _bermudaGreyShadowOffset = _pressedShadowOffset;
      },
    );
  }
}
