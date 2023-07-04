import 'package:flutter/material.dart';

import '../Utils/app_images.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final String imageStr;
  final Function()? onTap;
  final double fontText;
  bool backButton;
  bool backButtonText;

  final List<Widget>? actions;
  CustomAppBar({
    super.key,
    this.backButton = true,
    this.backButtonText = true,
    required this.text,
    this.imageStr = backBtn,
    this.onTap,
    required this.actions,
    required this.fontText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xff171A3E),
      leading: backButton ? const BackButton(color: Colors.white) : null,
      elevation: 0,
      actions: actions,
      title: Text(
        text,
        style: TextStyle(
          fontSize: fontText,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
