import 'package:sad_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialNetworkButton extends StatefulWidget {
  final String label;
  final String icon;
  final Future<void> Function()? onPressed;
  final Color? color;
  final bool? isLoading;

  const SocialNetworkButton({
    Key? key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.color,
    this.isLoading,
  }) : super(key: key);

  @override
  State<SocialNetworkButton> createState() => _SocialNetworkButtonState();
}

class _SocialNetworkButtonState extends State<SocialNetworkButton> {
  bool isHover = false;
  bool isAtive = false;
  bool isDefault = true;

  void setActiveState(bool state) {
    setState(() {
      isAtive = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: InkWell(
            onTap: widget.onPressed,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                gradient: AppColors.turquoiseTohalloweenOrange,
                boxShadow: isAtive
                    ? null
                    : [
                        BoxShadow(
                          color: Colors.orange[700]!.withOpacity(0.25),
                          offset: const Offset(0, 4),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                borderRadius: BorderRadius.circular(18.0),
                border: Border.all(
                  color: Colors.transparent,
                ),
              ),
              child: Row(
                children: [
                  _buildSvgIcon(),
                  _buildTextButton(context),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSvgIcon() {
    return Container(
      height: 56,
      width: 56,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(18),
          topLeft: Radius.circular(18),
        ),
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: SvgPicture.asset(
        widget.icon,
      ),
    );
  }

  Widget _buildTextButton(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          widget.label,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
          overflow: TextOverflow.clip,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
