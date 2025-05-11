import 'package:flutter/material.dart';
import 'widgets/router.dart';

void main() {
  runApp(const App());
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
