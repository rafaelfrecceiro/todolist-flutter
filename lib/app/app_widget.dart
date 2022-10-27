import 'package:flutter/material.dart';
import 'package:todolist_flutter/app/core/database/sqlite_adm_connection.dart';
import 'package:todolist_flutter/app/modules/auth/auth_module.dart';
import 'package:todolist_flutter/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TodoList Flutter',
      home: const SplashPage(),
      initialRoute: '/login',
      routes: {
        ...AuthModule().routers,
      },
    );
  }
}
