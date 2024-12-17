// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/constants/text_styles.dart';

class feedback_container extends StatelessWidget {
  const feedback_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFE3F2FD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Feeback', style: TextStyleConstants.styleHome16),
          ),
          feedback_row(
            imageProfileText: "assets/images/mostafa1.png",
            imageRateText: "assets/images/rate1.png",
            massageText:
                "Lorem Ipsum is simply dummy      text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
          ),
          SizedBox(
            height: 10,
          ),
          feedback_row(
            imageProfileText: "assets/images/mostafa2.png",
            imageRateText: "assets/images/rate2.png",
            massageText:
                "Lorem Ipsum is simply dummy       text of the printing and typesetting industry. Lorem Ipsum          has been the industry's standard dummy.",
          )
        ],
      ),
    );
  }
}

class feedback_row extends StatelessWidget {
  const feedback_row({
    Key? key,
    required this.imageProfileText,
    required this.imageRateText,
    required this.massageText,
  }) : super(key: key);
  final String imageProfileText;
  final String imageRateText;
  final String massageText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: 350,
        height: 125,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(imageProfileText),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          'Mr. Mostafa Sayed',
                          style: TextStyle(
                            color: Color(0xFF434050),
                            fontSize: 14,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Image.asset(imageRateText)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                massageText,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
