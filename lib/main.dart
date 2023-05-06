import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/app.dart';
import 'package:todo/utils/constants/app_color.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.appBgColor,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: AppColor.appBgColor,
        ),
        textTheme: GoogleFonts.lexendTextTheme(),
      ),
      home: const App(),
    );
  }
}
