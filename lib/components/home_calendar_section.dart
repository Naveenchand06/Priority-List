import 'package:flutter/material.dart';
import 'package:todo/utils/constants/app_color.dart';

class HomeCalendarSection extends StatelessWidget {
  const HomeCalendarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.appDarkColor,
              padding: const EdgeInsets.all(14.0)),
          child: const Text('Today'),
        ),
        const SizedBox(width: 10.0),
        SizedBox(
          width: MediaQuery.of(context).size.width * 70 / 100,
          height: 40.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 19,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 4.0);
            },
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(color: AppColor.appGreyColor),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                child: Text('${index + 1}'),
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
