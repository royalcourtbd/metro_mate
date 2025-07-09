import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_mate/core/config/app_screen.dart';
import 'package:metro_mate/core/config/app_theme_color.dart';
import 'package:metro_mate/core/utility/logger_utility.dart';

extension ContextExtensions on BuildContext {
  Future<T?> navigatorPush<T>(Widget page) async {
    try {
      if (!mounted) return null;
      final CupertinoPageRoute<T> route = CupertinoPageRoute<T>(
        builder: (context) => page,
      );
      return Navigator.push<T>(this, route);
    } catch (e) {
      logError("Failed to navigate to ${e.runtimeType} -> $e");
      return null;
    }
  }

  Future<T?> navigatorPushReplacement<T>(Widget page) async {
    try {
      if (!mounted) return null;
      final CupertinoPageRoute<T> route = CupertinoPageRoute<T>(
        builder: (context) => page,
      );
      return Navigator.pushReplacement(this, route);
    } catch (e) {
      logError("Failed to navigate to ${e.runtimeType} -> $e");
      return null;
    }
  }

  Future<T?> showBottomSheetLegacy<T>(Widget bottomSheet) async {
    return Get.bottomSheet<T>(
      bottomSheet,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(twentyPx),
          topRight: Radius.circular(twentyPx),
        ),
      ),
    );
  }

  Future<T?> showBottomSheet<T>(
    Widget bottomSheet,
    BuildContext context,
  ) async {
    if (!mounted) return null;
    final T? result = await showModalBottomSheet<T>(
      context: context,
      builder: (context) => bottomSheet,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(twentyPx),
          topRight: Radius.circular(twentyPx),
        ),
      ),
    );
    return result;
  }

  void navigatorPop<T>({T? result}) {
    if (!mounted) return;
    Navigator.pop(this, result);
  }
}

/// Helper extension that allows to use a color like:
/// `context.color.primary`
extension ThemeContextExtension on BuildContext {
  AppThemeColor get color {
    return Theme.of(this).extension<AppThemeColor>()!;
  }
}

/// Helper extension that allows to use color with opacity like:
/// `context.color.primary.withOpacityInt(0.1)`
extension ColorOpacityExtension on Color {
  Color withOpacityInt(double opacity) {
    return withAlpha((opacity * 255).toInt());
  }
}
