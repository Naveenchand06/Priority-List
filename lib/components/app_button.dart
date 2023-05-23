import 'package:flutter/material.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/responsive.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onPress,
  });

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Responsive.getPercentH(context, 5),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.appDarkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            )),
        child: Text(
          title,
          style: TextStyle(
            fontSize: Responsive.getPercentW(context, 3),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
