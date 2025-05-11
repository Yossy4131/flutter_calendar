import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});
  static const String path = '/calendar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar Page')),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ここにカレンダーを表示する'),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('戻る'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
