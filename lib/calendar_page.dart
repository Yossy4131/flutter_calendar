import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/page_items.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});
  static const String path = '/calendar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Calendar Demo Page'),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ここにカレンダーを表示する'),
                Button(
                  title: '戻る',
                  onPressed: () => GoRouter.of(context).pop(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
