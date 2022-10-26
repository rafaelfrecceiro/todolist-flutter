import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_flutter/app/app_widget.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Object(),
        )
      ],
      child: const AppWidget(),
    );
  }
}
