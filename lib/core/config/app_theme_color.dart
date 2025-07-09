import 'package:flutter/material.dart';
import 'package:metro_mate/core/config/app_color.dart';

class AppThemeColor extends ThemeExtension<AppThemeColor> {
  final Color scaffoldBachgroundColor;
  final Color primaryColor;
  final Color whiteColor;
  final Color backgroundColor;
  final Color borderColor;
  final Color titleColor;
  final Color subTitleColor;
  final Color successColor;
  final Color errorColor;

  const AppThemeColor({
    // Existing required properties
    required this.scaffoldBachgroundColor,
    required this.primaryColor,
    required this.whiteColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.titleColor,
    required this.subTitleColor,
    required this.successColor,
    required this.errorColor,
  });

  @override
  AppThemeColor copyWith({
    // Existing properties
    Color? scaffoldBachgroundColor,
    Color? primaryColor,
    Color? whiteColor,
    Color? backgroundColor,
    Color? borderColor,
    Color? titleColor,
    Color? subTitleColor,
    Color? successColor,
    Color? errorColor,
  }) {
    return AppThemeColor(
      // Existing properties
      scaffoldBachgroundColor:
          scaffoldBachgroundColor ?? this.scaffoldBachgroundColor,
      primaryColor: primaryColor ?? this.primaryColor,
      whiteColor: whiteColor ?? this.whiteColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      titleColor: titleColor ?? this.titleColor,
      subTitleColor: subTitleColor ?? this.subTitleColor,
      successColor: successColor ?? this.successColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  ThemeExtension<AppThemeColor> lerp(
    ThemeExtension<AppThemeColor>? other,
    double t,
  ) {
    if (other is! AppThemeColor) {
      return this;
    }
    return AppThemeColor(
      // Existing properties
      scaffoldBachgroundColor: Color.lerp(
        scaffoldBachgroundColor,
        other.scaffoldBachgroundColor,
        t,
      )!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
      subTitleColor: Color.lerp(subTitleColor, other.subTitleColor, t)!,
      successColor: Color.lerp(successColor, other.successColor, t)!,
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
    );
  }

  // Light theme instance
  static const light = AppThemeColor(
    // Existing properties
    scaffoldBachgroundColor: AppColor.scaffoldBachgroundColor,
    primaryColor: AppColor.primaryColor,
    whiteColor: AppColor.whiteColor,
    backgroundColor: AppColor.backgroundColor,
    borderColor: AppColor.borderColor,
    titleColor: AppColor.titleColor,
    subTitleColor: AppColor.subTitleColor,
    successColor: AppColor.successColor,
    errorColor: AppColor.errorColor,
  );
}
