import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/components/app_button.dart';
import 'package:todo/components/priority_card.dart';
import 'package:todo/components/task_text_field.dart';
import 'package:todo/models/priority_enum.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/responsive.dart';
import 'package:todo/utils/styles/font_style.dart';

class AddTaskPage extends ConsumerStatefulWidget {
  const AddTaskPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends ConsumerState<AddTaskPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  Priority selectedPriority = Priority.low;

  final List<Color> _priorityColors = [
    Colors.redAccent,
    Colors.orange,
    Colors.green
  ];

  // final List<String> _priorities = [
  //   'HIGH',
  //   'MEDIUM',
  //   'LOW',
  // ];

  // final List<bool> _priorityStatus = [
  //   false,
  //   false,
  //   false,
  // ];

  Color container1Color = AppColor.appTextGrey;
  Color container2Color = AppColor.appTextGrey;
  Color container3Color = AppColor.appTextGrey;

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      appBar: AppBar(
        title: Text(
          'Add Task',
          style: TextStyle(
            fontSize: Responsive.getPercentW(context, 4.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TaskTextField(
              fieldController: _titleController,
              title: 'Title',
              hintText: 'Example: "Buy groceries"',
              isRequired: true,
            ),
            const SizedBox(height: 16.0),
            TaskTextField(
              fieldController: _descController,
              title: 'Description',
              hintText: 'Give a short description',
              keyboardType: TextInputType.multiline,
              minLine: 3,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Priority',
                  style: Fonts.getNunito(
                    fontSize: Responsive.getPercentW(context, 3.2),
                    fw: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 6.0),
                Text(
                  '*',
                  style: Fonts.getNunito(
                    fontSize: Responsive.getPercentW(context, 3.5),
                    fw: FontWeight.bold,
                    color: AppColor.appErrorColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                GestureDetector(
                  onTap: () => changePriorityColor(1),
                  child: PriorityCard(
                    title: 'HIGH',
                    color: container1Color,
                  ),
                ),
                const SizedBox(width: 16.0),
                GestureDetector(
                  onTap: () => changePriorityColor(2),
                  child: PriorityCard(
                    title: 'MEDIUM',
                    color: container2Color,
                  ),
                ),
                const SizedBox(width: 16.0),
                GestureDetector(
                  onTap: () => changePriorityColor(3),
                  child: PriorityCard(
                    title: 'LOW',
                    color: container3Color,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Date & time',
                  style: Fonts.getNunito(
                    fontSize: Responsive.getPercentW(context, 3.2),
                    fw: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 10.0),
                Text(
                  '*',
                  style: Fonts.getNunito(
                    fontSize: Responsive.getPercentW(context, 3.5),
                    fw: FontWeight.bold,
                    color: AppColor.appErrorColor,
                  ),
                ),
              ],
            ),
            AppButton(
              title: 'Add',
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }

  changePriorityColor(int num) {
    if (num == 1) {
      setState(() {
        container1Color = _priorityColors[num - 1];
        container2Color = AppColor.appTextGrey;
        container3Color = AppColor.appTextGrey;
        selectedPriority = Priority.high;
      });
    } else if (num == 2) {
      setState(() {
        container2Color = _priorityColors[num - 1];
        container1Color = AppColor.appTextGrey;
        container3Color = AppColor.appTextGrey;
        selectedPriority = Priority.medium;
      });
    } else {
      setState(() {
        container3Color = _priorityColors[num - 1];
        container1Color = AppColor.appTextGrey;
        container2Color = AppColor.appTextGrey;
        selectedPriority = Priority.low;
      });
    }
  }
}
