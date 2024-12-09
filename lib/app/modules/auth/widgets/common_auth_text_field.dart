import 'dart:developer';

import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CommonAuthTextField extends StatefulWidget {
  final String? hintText;
  final double? horizontalPadding;
  final double? verticalPadding;
  final bool isObscureText;
  final TextEditingController? controller;
  const CommonAuthTextField({
    Key? key,
    @required this.hintText,
    @required this.controller,
    this.horizontalPadding,
    this.isObscureText = false,
    this.verticalPadding,
  }) : super(key: key);

  @override
  State<CommonAuthTextField> createState() => _CommonAuthTextFieldState();
}

class _CommonAuthTextFieldState extends State<CommonAuthTextField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.horizontalPadding ?? 0,
        vertical: widget.verticalPadding ?? 0,
      ),
      child: Column(
        children: [
          TextFormField(
            controller: widget.controller,
            style: const TextStyle(color: Colors.white),
            validator: (value) {
              if (value == null) {
                return widget.hintText == LocaleKeys.login_email.tr()
                    ? 'Digite um email'
                    : 'Digite uma senha';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Color(0x88EE5623)),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Color(0xFFEE5623)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Color(0xFFEE5623)),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFEE5623),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefixIcon: widget.hintText == LocaleKeys.login_email.tr()
                  ? const Icon(
                      Icons.email,
                      color: Color(0xFFEE5623),
                    )
                  : const Icon(
                      Icons.lock,
                      color: Color(0xFFEE5623),
                    ),
              suffixIcon: widget.isObscureText
                  ? IconButton(
                      onPressed: _toggleVisibility,
                      icon: _isHidden
                          ? const Icon(
                              Icons.visibility_off,
                              color: Color(0xFFEE5623),
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Color(0xFFEE5623),
                            ),
                    )
                  : null,
            ),
            obscureText: widget.isObscureText ? _isHidden : false,
          ),
        ],
      ),
    );
  }

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
    log(_isHidden.toString());
  }
}
