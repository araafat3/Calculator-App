// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fluttercalculatorapp/main.dart';

void main() {
  testWidgets('mathmatical equation +', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    final testKey = Key('K');

    var button1 = find.text("9");
    expect(button1,findsOneWidget);
    await tester.tap(button1);
    await tester.pump();

    var button2 = find.text("9");
    expect(button2,findsOneWidget);
    await tester.tap(button2);
    await tester.pump();

    var buttonPlus = find.text("+");
    expect(buttonPlus,findsOneWidget);
    await tester.tap(buttonPlus);
    await tester.pump();

    var buttonEqual = find.text("=");
    expect(buttonEqual,findsOneWidget);
    await tester.tap(buttonEqual);
    await tester.pump();








    var text = find.byKey(testKey);
    expect(text, findsOneWidget);
    expect(find.text("18"), findsOneWidget);

  });
}
