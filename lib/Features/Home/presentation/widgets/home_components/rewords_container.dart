// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/constants/text_styles.dart';

class rewords extends StatelessWidget {
  const rewords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Container(
        width: 380,
        height: 200,
        decoration: ShapeDecoration(
          color: Color(0x3FFFD700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Row(
                    children: [
                      Text('Rewards', style: TextStyleConstants.styleHome16),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: LinearPercentIndicator(
                          width: 250.0,
                          lineHeight: 14.0,
                          percent: 0.5,
                          progressColor: Color(0xFF007BFF),
                          backgroundColor: Colors.grey[300]!,
                          barRadius: Radius.circular(10),
                          animation: true,
                          animationDuration: 1000,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: reward_row(
                        headerText: 'Helping Others',
                        imageText: 'assets/images/reward-hand.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: reward_row(
                        headerText: 'Teamwork',
                        imageText: 'assets/images/reword-people.png',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class reward_row extends StatelessWidget {
  const reward_row({
    Key? key,
    required this.headerText,
    required this.imageText,
  }) : super(key: key);
  final String headerText;
  final String imageText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 121,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(headerText, style: TextStyleConstants.styleLogin14),
            Row(
              children: [
                Image.asset(imageText),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mr. Ahmed Omar',
                        style: TextStyleConstants.styleHome12),
                    Text('12/4/2024', style: TextStyleConstants.styleHome12)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
