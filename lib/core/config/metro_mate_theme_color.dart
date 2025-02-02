import 'package:flutter/material.dart';
import 'package:metro_mate/core/config/metro_mate_app_color.dart';

class MetroMateThemeColor extends ThemeExtension<MetroMateThemeColor> {
  final Color scaffoldBachgroundColor;
  final Color primaryColor;
  final Color whiteColor;
  final Color backgroundColor;
  final Color borderColor;
  final Color titleColor;
  final Color subTitleColor;
  final Color successColor;
  final Color errorColor;

  const MetroMateThemeColor({
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
  MetroMateThemeColor copyWith({
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
    return MetroMateThemeColor(
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
  ThemeExtension<MetroMateThemeColor> lerp(
      ThemeExtension<MetroMateThemeColor>? other, double t) {
    if (other is! MetroMateThemeColor) {
      return this;
    }
    return MetroMateThemeColor(
      // Existing properties
      scaffoldBachgroundColor: Color.lerp(
          scaffoldBachgroundColor, other.scaffoldBachgroundColor, t)!,
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
  static const light = MetroMateThemeColor(
    // Existing properties
    scaffoldBachgroundColor: MetroMateAppColor.scaffoldBachgroundColor,
    primaryColor: MetroMateAppColor.primaryColor,
    whiteColor: MetroMateAppColor.whiteColor,
    backgroundColor: MetroMateAppColor.backgroundColor,
    borderColor: MetroMateAppColor.borderColor,
    titleColor: MetroMateAppColor.titleColor,
    subTitleColor: MetroMateAppColor.subTitleColor,
    successColor: MetroMateAppColor.successColor,
    errorColor: MetroMateAppColor.errorColor,
  );
}
