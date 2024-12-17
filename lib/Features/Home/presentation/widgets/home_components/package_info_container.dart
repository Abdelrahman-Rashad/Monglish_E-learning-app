// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../data/models/student_info/data.dart';
import 'package_club_container.dart';

class package_info_container extends StatelessWidget {
  const package_info_container({
    Key? key,
    required this.student_data,
  }) : super(key: key);
  final Data student_data;

  @override
  Widget build(BuildContext context) {
    List<String> package_image = [
      "assets/images/reading-club.png",
      "assets/images/speaking-club.png",
      "assets/images/dabates-club.png"
    ];
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: Container(
            decoration: ShapeDecoration(
              color: Color(0xB2FFCEA3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: Text('Package Clubs',
                          style: TextStyleConstants.styleHome16),
                    ),
                    SizedBox(
                      height: 130,
                      width: 350,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 2.7),
                        itemCount: student_data.packageClubs!.length,
                        itemBuilder: (contexr, index) {
                          return Package_club_row(
                            imageText: package_image[index],
                            text: student_data.packageClubs![index].name!,
                            numAvailableText: student_data
                                .packageClubs![index].sessions!
                                .toString(),
                            numTakenText: student_data
                                .packageClubs![index].count!
                                .toString(),
                          );
                        },
                      ),
                    ),
                  ]),
            )));
  }
}
