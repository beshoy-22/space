import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:space_app/main.dart';
import 'package:space_app/login.dart';

void main() {
  testWidgets('Space App Login Test', (WidgetTester tester) async {
    // Start the application
    await tester.pumpWidget(const SpaceApp());

    // Check if Login Screen is displayed
    expect(find.byType(Login), findsOneWidget);

    // Check if Login image exists
    expect(find.byType(Image), findsOneWidget);

    // Tap Explore button
    await tester.tap(find.byType(InkWell).first);

    // Wait for navigation
    await tester.pumpAndSettle();

    // Check if Home Screen is displayed
    expect(find.text('Explore The Universe'), findsOneWidget);
  });
}
