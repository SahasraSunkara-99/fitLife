import 'package:flutter_test/flutter_test.dart';
import 'package:fetch_data_app/main.dart';

void main() {
  testWidgets('Fetch Data App loads successfully', (
    WidgetTester tester,
  ) async {
    // Build the application.
    await tester.pumpWidget(const MainApp());

    // Verify that the app bar title is displayed.
    expect(find.text('Fetched Data'), findsOneWidget);

    // Wait for the API request and UI to settle.
    await tester.pumpAndSettle();

    // The application should still be running successfully.
    expect(find.byType(MainApp), findsOneWidget);
  });
}