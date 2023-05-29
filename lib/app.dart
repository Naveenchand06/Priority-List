import 'package:flutter/material.dart';
import 'package:todo/pages/add_task_page.dart';
import 'package:todo/pages/welcome_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isNameSet = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: isNameSet ? const AddTaskPage() : const WelcomePage(),
    );
  }
}
