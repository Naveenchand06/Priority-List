import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateCardWidget extends StatelessWidget {
  const DateCardWidget({
    super.key,
    required this.date,
    required this.format,
    required this.cardColor,
  });

  final String date;
  final String format;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 80.0,
            width: 50.0,
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: cardColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                width: 1.6,
                color: cardColor,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date,
                  style: GoogleFonts.roboto(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: cardColor,
                  ),
                ),
                Text(
                  format,
                  style: GoogleFonts.roboto(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: cardColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
