import 'package:flutter/material.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/responsive.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.onChange,
    this.onSubmit,
    this.validate,
    this.fieldController,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.fieldAction = TextInputAction.done,
    this.radius = 10.0,
  });

  final String hintText;
  final bool isPassword;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final TextInputType keyboardType;
  final TextEditingController? fieldController;
  final TextInputAction fieldAction;
  final String? Function(String?)? validate;
  final double radius;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool showPassword = false;

  void _passwordVisbilityFunction() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.fieldController,
      onChanged: widget.onChange,
      onFieldSubmitted: widget.onSubmit,
      validator: widget.validate,
      keyboardType: widget.keyboardType,
      textInputAction: widget.fieldAction,
      obscureText: widget.isPassword ? showPassword : false,
      style: TextStyle(
          fontSize: Responsive.getPercentW(context, 3.2), color: Colors.black),
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.grey.shade100,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: Responsive.getPercentW(context, 3.2),
          color: Colors.grey.shade600,
        ),

        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: _passwordVisbilityFunction,
                icon: showPassword
                    ? const Icon(
                        Icons.visibility,
                      )
                    : const Icon(
                        Icons.visibility_off,
                      ),
              )
            : null,
        contentPadding: EdgeInsets.all(Responsive.getPercentW(context, 4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide:
              const BorderSide(width: 2.0, color: AppColor.appGreyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              const BorderSide(width: 2.0, color: AppColor.appGreyColor),
        ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(widget.radius),
        //   borderSide: BorderSide.none,
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(widget.radius),
        //   borderSide: const BorderSide(
        //     width: 1.0,
        //     strokeAlign: 10.0,
        //     color: Color(0xff2F4093),
        //   ),
        // ),
      ),
    );
  }
}
