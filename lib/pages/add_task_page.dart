import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/components/app_text_field.dart';
import 'package:todo/components/task_text_field.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/responsive.dart';

class AddTaskPage extends ConsumerStatefulWidget {
  const AddTaskPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends ConsumerState<AddTaskPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

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
          ],
        ),
      ),
    );
  }
}
