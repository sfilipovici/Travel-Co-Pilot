import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_copilot/app/app.dart';

void main() {
  testWidgets('App smoke test: bottom nav + Plan tab renders', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: App()));

    expect(find.text('Plan'), findsOneWidget);
    expect(find.text('Map'), findsOneWidget);
    expect(find.text('AR'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.textContaining('Plan –'), findsOneWidget);
  });
}
