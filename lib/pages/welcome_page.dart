import 'package:flutter/material.dart';
import 'package:todo/components/app_text_field.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/globals.dart';
import 'package:todo/components/app_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appWhiteColor,
      body: Padding(
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
            const Text(
              'Enter your name to get started',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: defaultPad),
            const AppTextField(hintText: 'Enter your name'),
            const SizedBox(height: 32.0),
            AppButton(
              title: 'Next',
              onPress: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
