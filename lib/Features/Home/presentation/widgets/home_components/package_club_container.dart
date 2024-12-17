// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/constants/text_styles.dart';

class Package_club_row extends StatelessWidget {
  const Package_club_row({
    Key? key,
    required this.imageText,
    required this.text,
    required this.numAvailableText,
    required this.numTakenText,
  }) : super(key: key);
  final String imageText;
  final String text;
  final String numAvailableText;
  final String numTakenText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(imageText),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyleConstants.styleHomeBlod14),
                Row(
                  children: [
                    Text('Available', style: TextStyleConstants.styleHome12),
                    SizedBox(
                      width: 2,
                    ),
                    Text(numAvailableText,
                        style: TextStyleConstants.styleHomeBold12),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Taken', style: TextStyleConstants.styleHome12),
                    SizedBox(
                      width: 2,
                    ),
                    Text(numTakenText,
                        style: TextStyleConstants.styleHomeBold12),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
