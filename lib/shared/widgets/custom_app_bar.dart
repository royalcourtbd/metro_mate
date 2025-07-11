import 'package:flutter/material.dart';
import 'package:metro_mate/core/config/app_screen.dart';
import 'package:metro_mate/core/external_libs/svg_image.dart';
import 'package:metro_mate/core/static/svg_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, required this.theme});

  final String title;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: seventyPx,
      leading: Padding(
        padding: EdgeInsets.only(left: sixteenPx),
        child: SvgImage(SvgPath.appLogo),
      ),

      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: tenPx,
        children: [
          SvgImage(SvgPath.icLogo, height: eighteenPx),
          Text(
            title,
            style: theme.textTheme.bodySmall!.copyWith(
              fontSize: thirteenPx,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
