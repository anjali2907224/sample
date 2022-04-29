import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:demo_app/main.dart'as app;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
      'Passed test cases',
          (WidgetTester tester) async {
   app.main();
   await tester.pumpAndSettle();
   expect(find.text("Flutter Demo Home Page"),findsOneWidget);
   expect(find.textContaining("You have pushed the button this many times:"),findsOneWidget);
   expect(find.text("0"),findsOneWidget);
   expect(find.byIcon(Icons.add),findsOneWidget);
      }
      );

  testWidgets(
      'Failure test cases',
          (WidgetTester tester) async {
        app.main();
        await tester.pumpAndSettle();
        expect(find.text("Flutter Demo Home Page"),findsOneWidget);
        expect(find.textContaining("You have pushed the button this many times:"),findsOneWidget);
        expect(find.text("0"),findsOneWidget);
        expect(find.byIcon(Icons.add),findsNothing);
      }
  );

}
