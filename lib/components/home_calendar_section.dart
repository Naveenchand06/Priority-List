import 'package:flutter/material.dart';
import 'package:todo/utils/constants/app_color.dart';
import 'package:todo/utils/responsive.dart';

class HomeCalendarSection extends StatelessWidget {
  const HomeCalendarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.appDarkColor,
              maximumSize: const Size(100.0, 50.0),
              minimumSize: const Size(80.0, 40.0),
              padding: const EdgeInsets.all(
                16.0,
              )),
          child: const Text('Today'),
        ),
        const SizedBox(width: 10.0),
        SizedBox(
          width: Responsive.getPercentW(context, 70.0),
          height: 40.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 19,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10.0);
            },
            itemBuilder: (context, index) {
              return Container(
                constraints: const BoxConstraints(
                  minWidth: 40.0,
                  minHeight: 40.0,
                  maxWidth: 50.0,
                  maxHeight: 50.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(color: AppColor.appGreyColor),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              );
            },
          ),
        )
        // [1, 2, 3, 4, 5, 6, 7]
        //     .map((e) => Container(
        //           padding: const EdgeInsets.all(6.0),
        //           child: Text('$e'),
        //         ))
        //     .toList(),
      ],
    );
  }
}
