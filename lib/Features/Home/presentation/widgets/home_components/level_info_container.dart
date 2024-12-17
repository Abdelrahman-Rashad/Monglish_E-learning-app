// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/text_styles.dart';
import '../../../data/models/student_info/data.dart';
import 'student_info_row.dart';

class level_info_container extends StatelessWidget {
  const level_info_container({
    Key? key,
    required this.student_data,
    required this.complete_info_level,
  }) : super(key: key);

  final Data student_data;
  final String complete_info_level;

  @override
  Widget build(BuildContext context) {
    // Format the DateTime into the desired format
    String formattedDate =
        DateFormat('EEE MMM dd yyyy').format(student_data.packageExpireAt!);
    String Expire =
        student_data.package!.name! + ' expires on ' + formattedDate;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0x66C9A8E2),
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
                  child: Text('Current Level',
                      style: TextStyleConstants.styleHome16),
                ),
                SizedBox(
                  height: 140,
                  width: 350,
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 2.5,
                      children: [
                        student_info_row(
                            imageText: "assets/images/level.png",
                            text: complete_info_level),
                        student_info_row(
                            imageText: "assets/images/remain.png",
                            text: student_data.remainingLevels.toString() +
                                " Remaining Levels"),
                        student_info_row(
                            imageText: "assets/images/active.png",
                            text: student_data.statusType!.name ?? ''),
                        student_info_row(
                            imageText: "assets/images/clock.png", text: Expire),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
