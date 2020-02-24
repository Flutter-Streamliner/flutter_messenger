import 'package:flutter/material.dart';
import 'package:flutter_messenger/pages/conversation_page.dart';
import 'package:flutter_messenger/pages/conversation_page_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  const ConversationPageList()
    ),
  );
  testWidgets('ConversationPageList UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}