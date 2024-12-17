import 'package:flutter/material.dart';

import '../../../../../core/constants/text_styles.dart';

class student_info_row extends StatelessWidget {
  const student_info_row({
    Key? key,
    required this.imageText,
    required this.text,
  }) : super(key: key);
  final String imageText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(imageText),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyleConstants.styleHomegray14,
              overflow: TextOverflow.fade,
            ),
          )
        ],
      ),
    );
  }
}
