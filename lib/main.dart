import 'package:flutter/material.dart';
import 'package:gdsc_session2/providers/task_provider.dart';
import 'package:gdsc_session2/screens/todo_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Session',
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
        )),
        themeMode: ThemeMode.system,
        home: const TodoScreen(),
      ),
    );
  }
}
