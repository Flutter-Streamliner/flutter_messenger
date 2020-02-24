import 'package:flutter/material.dart';
import 'package:flutter_messenger/pages/conversation_page.dart';
import 'package:flutter_messenger/widgets/chat_app_bar.dart';
import 'package:flutter_messenger/widgets/chat_list_widget.dart';
import 'package:flutter_messenger/widgets/input_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  MaterialApp app = MaterialApp(
    home: Scaffold(
        body: ConversationPage()
    ),
  );
  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}