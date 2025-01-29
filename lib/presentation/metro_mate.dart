import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_mate/presentation/home/ui/home_page.dart';

class MetroMate extends StatelessWidget {
  const MetroMate({super.key});

  static final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get globalContext =>
      _navigatorKey.currentContext ?? Get.context!;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) => child!,
      title: 'Metro Mate',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
