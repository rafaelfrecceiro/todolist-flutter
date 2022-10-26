import 'package:flutter/material.dart';
import 'package:todolist_flutter/app/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TodoList Flutter',
      home: SplashPage(),
    );
  }
}
