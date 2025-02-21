import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSignupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginSignupAppBar({
    super.key,
    required this.title,
    this.subTitle,
    this.titleColor,
  });
  final String title;
  final String? subTitle;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 150.h,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.apply(color: titleColor),
          ),
          if (subTitle != null)
            Text(
              subTitle!,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.apply(color: titleColor),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150.h);
}
