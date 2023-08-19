import 'package:flutter/material.dart';
import 'package:mock_messaging_app/mock_messaging.dart';

class ReplyListView extends StatelessWidget {
  const ReplyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ListView(
        children: [
          const SizedBox(height: 8),
          ...List.generate(replies.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EmailWidget(
                email: replies[index],
                isPreview: false,
                isThreaded: true,
                showHeadline: index == 0,
              ),
            );
          }),
        ],
      ),
    );
  }
}
