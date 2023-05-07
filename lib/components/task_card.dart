import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/components/date_card.dart';
import 'package:todo/utils/constants/app_color.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: true,
      contentPadding: const EdgeInsets.all(6.0),
      side: BorderSide(
        color: AppColor.appGreyColor.withOpacity(0.6),
        width: 5.0,
      ),
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
      title: Text(
        'Checkbox Title',
        style: GoogleFonts.roboto(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Carrot - 2kg beetroot - 500gm raddish',
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.roboto(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
