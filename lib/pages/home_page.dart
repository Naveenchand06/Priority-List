import 'package:flutter/material.dart';
import 'package:todo/components/home_calendar_section.dart';
import 'package:todo/components/task_card.dart';
import 'package:todo/utils/constants/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              // Date Indication
              const HomeCalendarSection(),
              const SizedBox(height: 16.0),

              const Text(
                'May 20',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 8.0,
                      );
                    },
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const TaskCard();
                    }),
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
