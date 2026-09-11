// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:palmai/main.dart';

void main() {
  testWidgets('HomePage shows title and counts taps', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PalmAiApp());

    expect(find.text('Palm AI'), findsOneWidget);
    expect(find.text('Tap me'), findsOneWidget);
    expect(find.text('Button tapped 0 times'), findsOneWidget);

    await tester.tap(find.text('Tap me'));
    await tester.pump();

    expect(find.text('Button tapped 1 time'), findsOneWidget);
  });
}
