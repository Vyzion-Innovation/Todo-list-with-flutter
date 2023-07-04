import 'package:flutter/material.dart';

import '../Utils/app_images.dart';
import '../Utils/app_strings.dart';

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
      backgroundColor: Color(0xff171A3E),
      elevation: 0,
      actions: actions,
      automaticallyImplyLeading: true,
      leadingWidth: 50,
      leading: backButton
          ? InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      imageStr,
                      height: 15,
                      width: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    backButtonText == true ? back : "",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff004545),
                    ),
                  )
                ],
              ))
          : null,
      title: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontText,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
