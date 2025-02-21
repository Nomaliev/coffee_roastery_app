import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSignupAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginSignupAppBar({super.key, required this.title, this.subTitle});
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150.h,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineLarge),
          if (subTitle != null)
            Text(subTitle!, style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150.h);
}
