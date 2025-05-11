import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
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
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2100, 12, 31),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
