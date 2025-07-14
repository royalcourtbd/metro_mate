// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:metro_mate/app/metro_mate.dart';

void main() {
  testWidgets('Metro Mate App widget test', (WidgetTester tester) async {
    // Build our complete MetroMate app
    await tester.pumpWidget(const MetroMate());

    // Wait for the widget tree to settle
    await tester.pumpAndSettle();

    // Verify that our app title is displayed.
    expect(find.text('Simplify Your MRT Journey'), findsOneWidget);

    // Verify that the basic structure exists
    expect(find.byType(Scaffold), findsOneWidget);
  });

  testWidgets('Metro Mate basic structure test', (WidgetTester tester) async {
    // Build the complete app
    await tester.pumpWidget(const MetroMate());

    // Wait for everything to load
    await tester.pumpAndSettle();

    // Verify basic structure elements
    expect(find.byType(GetMaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);

    // Verify app title
    expect(find.text('Simplify Your MRT Journey'), findsOneWidget);
  });

  testWidgets('App basic structure test', (WidgetTester tester) async {
    // Test basic widget structure
    const widget = MaterialApp(
      home: Scaffold(body: Center(child: Text('Metro Mate Test'))),
    );

    await tester.pumpWidget(widget);

    // Verify basic structure
    expect(find.text('Metro Mate Test'), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
