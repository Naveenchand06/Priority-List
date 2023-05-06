import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/utils/globals.dart';
import 'package:todo/widgets/app_button.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: GestureDetector(
        onTap: () {
          debugPrint('Tapped');
          print('Tapped');
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(defaultPad),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.indigoAccent,
                radius: 50.0,
              ),
              const SizedBox(height: defaultPad),
              const Text('Enter your name to get started'),
              const SizedBox(height: defaultPad),
              TextFormField(
                cursorColor: primaryDarkColor,
                decoration: InputDecoration(
                  hintText: 'Enter you name',
                  contentPadding: const EdgeInsets.all(18.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(width: 2.0, color: greyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(width: 2.0, color: greyColor),
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              AppButton(
                title: 'Next',
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
