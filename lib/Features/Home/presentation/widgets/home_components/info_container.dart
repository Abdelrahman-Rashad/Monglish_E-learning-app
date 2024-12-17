// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/constants/text_styles.dart';
import '../../../data/models/student_info/data.dart';
import 'profile_image.dart';
import 'student_info_row.dart';

class info_container extends StatelessWidget {
  const info_container({
    Key? key,
    required this.student_data,
  }) : super(key: key);
  final Data student_data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0x7FA3D0FF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Row(
                  children: [
                    ProfileImage(
                      w: 50,
                      h: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(student_data.name ?? '',
                              style: TextStyleConstants.styleHome16),
                          Text(student_data.id.toString(),
                              style: TextStyleConstants.styleHomegray14)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 100,
                  width: 350,
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      childAspectRatio: 2,
                      children: [
                        student_info_row(
                          imageText: "assets/images/phone.png",
                          text: student_data.phone ?? '+20 114 111 5424',
                        ),
                        student_info_row(
                          imageText: "assets/images/clander.png",
                          text: student_data.birthdate ?? '12-2-2010',
                        ),
                        Text("   "),
                        student_info_row(
                          imageText: "assets/images/massage.png",
                          text: student_data.email ?? '',
                        ),
                        student_info_row(
                          imageText: "assets/images/nationality.png",
                          text: student_data.nationality ?? 'Egyptian',
                        ),
                        student_info_row(
                          imageText: "assets/images/gender.png",
                          text: student_data.gender ?? 'Male',
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
/**Row(
              children: [
                student_info_row(
                  imageText: "assets/images/phone.png",
                  text: student_data.phone ?? '',
                ),
                student_info_row(
                  imageText: "assets/images/clander.png",
                  text: student_data.birthdate ?? '',
                ),
              ],
            ),
            Row(
              children: [
                student_info_row(
                  imageText: "assets/images/massage.png",
                  text: student_data.email ?? '',
                ),
                student_info_row(
                  imageText: "assets/images/nationality.png",
                  text: student_data.nationality ?? '',
                ),
                student_info_row(
                  imageText: "assets/images/gender.png",
                  text: student_data.gender ?? '',
                ),
              ],
            ), */
