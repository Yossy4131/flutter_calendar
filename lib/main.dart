import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'widgets/router.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flutter Calendar",
      routerConfig: router,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}
