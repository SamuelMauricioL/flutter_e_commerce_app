// import 'package:e_commerce_app/ui/app/view/app.dart';
import 'package:e_commerce_app/ui/counter/view/counter_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      // await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
