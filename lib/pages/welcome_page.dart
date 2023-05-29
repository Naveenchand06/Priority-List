import 'package:flutter/material.dart';
import 'package:todo/components/app_text_field.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/globals.dart';
import 'package:todo/components/app_button.dart';
import 'package:todo/utils/responsive.dart';
import 'package:todo/utils/styles/font_style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appWhiteColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPad),
            child: Column(
              children: [
                SizedBox(height: Responsive.getPercentH(context, 20)),
                CircleAvatar(
                  backgroundColor: Colors.indigoAccent,
                  radius: Responsive.getPercentW(context, 16),
                ),
                SizedBox(height: Responsive.getPercentH(context, 4)),
                Text(
                  'Enter your name to get started',
                  style: Fonts.getNunito(
                    fontSize: Responsive.getPercentW(context, 3.5),
                    fw: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Responsive.getPercentH(context, 2)),
                SizedBox(
                  height: Responsive.getPercentH(context, 8),
                  child: const AppTextField(hintText: 'Enter your name'),
                ),
                SizedBox(height: Responsive.getPercentH(context, 30)),
                AppButton(
                  title: 'Get Started',
                  onPress: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
