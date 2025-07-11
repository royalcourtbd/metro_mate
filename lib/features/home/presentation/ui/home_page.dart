import 'package:flutter/material.dart';
import 'package:metro_mate/shared/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(theme: theme, title: 'Simplify Your MRT Journey'),
    );
  }
}
