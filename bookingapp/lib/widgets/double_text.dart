import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWidget(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        InkWell(
          onTap: () {
            print("Clicked on View all");
          },
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        ),
      ],
    );
  }
}
