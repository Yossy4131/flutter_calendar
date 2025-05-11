import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import 'widgets/page_items.dart';

class CalendarApp extends StatelessWidget{
  const CalendarApp({super.key});

  static const String path = '/calendar';

  @override
  Widget build(BuildContext content){
    return MaterialApp(
      title: 'Calendar Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: const CalendarPage(),
    );
  }
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});
  

  @override
  State<CalendarPage> createState() => CalendarPageState();
}

class CalendarPageState extends State<CalendarPage> {
  DateTime currentDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Calendar Demo Page'),
      body: Stack(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2100, 12, 31),
            calendarFormat: calendarFormat,
            focusedDay: focusedDay,
            currentDay: currentDay,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                currentDay = selectedDay;
                focusedDay = focusedDay;
              });
            },
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
