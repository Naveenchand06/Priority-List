import 'package:flutter/material.dart';
import 'package:todo/components/date_card.dart';
import 'package:todo/utils/constants/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tasks',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: AppColor.appDarkColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                      size: 30.0,
                      color: AppColor.appGreyColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CheckboxListTile(
                    title: const Text('Checkbox Title'),
                    value: true,
                    contentPadding: const EdgeInsets.all(8.0),
                    side: const BorderSide(color: AppColor.appGreyColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: const BorderSide(
                        color: AppColor.appDarkGreyColor,
                      ),
                    ),
                    onChanged: (newValue) {},
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const DateCardWidget(
                      date: '3:00',
                      format: 'AM',
                      cardColor: Colors.green,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.appDarkColor,
        child: const Icon(
          Icons.add_outlined,
          size: 30.0,
        ),
      ),
    );
  }
}
