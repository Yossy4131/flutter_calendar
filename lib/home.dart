import 'package:flutter/material.dart';
import 'package:flutter_calender/calendar_page.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flutter Calendar Demo Page'),
              ElevatedButton(
                onPressed: () => GoRouter.of(context).push(CalendarPage.path),
                child: Text('Go to Calendar Page'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
