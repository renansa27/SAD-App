import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onLeadingPressed;
  final PreferredSizeWidget? bottom;
  const CommonAppBar({
    Key? key,
    required this.title,
    this.onLeadingPressed,
    this.bottom,
  }) : super(key: key);

  @override
  Size get preferredSize =>
      Size.fromHeight(50 + (bottom?.preferredSize.height ?? 0.0));

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFEE5623),
      leading: Modular.to.canPop()
          ? IconButton(
              onPressed: onLeadingPressed ?? _popRoute,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            )
          : null,
      title: Text(title),
      centerTitle: true,
    );
  }

  void _popRoute() => Modular.to.pop();
}
