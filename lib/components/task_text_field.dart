import 'package:flutter/material.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/responsive.dart';
import 'package:todo/utils/styles/font_style.dart';

class TaskTextField extends StatelessWidget {
  const TaskTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.minLine = 1,
    this.isRequired = false,
    this.onChange,
    this.onSubmit,
    this.validate,
    this.fieldController,
    this.keyboardType = TextInputType.text,
    this.fieldAction = TextInputAction.done,
    this.radius = 10.0,
  });
  final String title;
  final String hintText;
  final bool isRequired;
  final int minLine;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final TextInputType keyboardType;
  final TextEditingController? fieldController;
  final TextInputAction fieldAction;
  final String? Function(String?)? validate;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: Fonts.getNunito(
                fontSize: Responsive.getPercentW(context, 3.2),
                fw: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 6.0),
            if (isRequired)
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
        const SizedBox(height: 8.0),
        TextFormField(
          controller: fieldController,
          onChanged: onChange,
          onFieldSubmitted: onSubmit,
          validator: validate,
          keyboardType: keyboardType,
          textInputAction: fieldAction,
          cursorColor: AppColor.appDarkColor,
          minLines: minLine,
          maxLines: 5,
          style: TextStyle(
            fontSize: Responsive.getPercentW(context, 3.3),
            color: Colors.black,
          ),
          decoration: InputDecoration(
            // filled: true,
            // fillColor: Colors.grey.shade100,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: Responsive.getPercentW(context, 3.2),
              color: Colors.grey.shade600,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  const BorderSide(width: 2.0, color: AppColor.appBorderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide:
                  const BorderSide(width: 2.0, color: AppColor.appBorderColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide:
                  const BorderSide(width: 2.0, color: AppColor.appErrorColor),
            ),
          ),
        ),
      ],
    );
  }
}
