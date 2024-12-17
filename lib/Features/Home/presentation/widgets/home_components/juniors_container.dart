// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:quantum_sit/Features/Home/data/models/student_info/data.dart';

import '../../../../../core/constants/text_styles.dart';
import 'student_info_row.dart';

class juniors_container extends StatelessWidget {
  const juniors_container({
    Key? key,
    required this.student_data,
    required this.complete_info_level,
  }) : super(key: key);
  final Data student_data;
  final String complete_info_level;

  @override
  Widget build(BuildContext context) {
    DateTime startDate = DateTime.parse(student_data.dataClass!.startDate!);
    DateTime endDate = DateTime.parse(student_data.dataClass!.endDate!);
    String formattedstartDate = DateFormat('MMM dd, yyyy').format(startDate);
    String formattedEndDate = DateFormat('MMM dd, yyyy').format(endDate);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0x7FC1FFC1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(student_data.dataClass!.name!,
                    style: TextStyleConstants.styleHome16),
                Text(complete_info_level,
                    style: TextStyleConstants.styleHome12),
                SizedBox(
                  height: 120,
                  width: 350,
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 3,
                      children: [
                        student_info_row(
                            imageText: "assets/images/date.png",
                            text:
                                formattedstartDate + ' - ' + formattedEndDate),
                        student_info_row(
                            imageText: "assets/images/student.png",
                            text: '3 Students'),
                        student_info_row(
                            imageText: "assets/images/student.png",
                            text: "Tasnim Ashraf"),
                        student_info_row(
                            imageText: "assets/images/green-active.png",
                            text: student_data.statusType!.name!),
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
