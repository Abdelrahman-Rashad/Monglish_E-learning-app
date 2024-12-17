// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:quantum_sit/Features/Home/presentation/widgets/home_components/profile_image.dart';

import '../../../../core/constants/text_styles.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0xFF0A1633),
                    Color(0xFF1D3988),
                    Color(0xFF0A1633)
                  ],
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: 30,
              child: Container(
                width: 456,
                height: 83,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ProfileImage(
                        w: 70,
                        h: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome Ahmed Mohamed',
                                style: TextStyleConstants.styleMenu16),
                            Text('2256',
                                style: TextStyleConstants.styleHomegray14)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height * 0.17,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menu_row(
                      imageText: "assets/images/dasboard-icon.png",
                      title: 'Dashboard',
                    ),
                    DottedLine(
                      dashColor: Colors.white.withOpacity(0.5),
                      dashLength: 3,
                      lineLength: MediaQuery.sizeOf(context).width * 0.75,
                    ),
                    menu_row(
                      imageText: "assets/images/school.png",
                      title: 'Schools',
                    ),
                    DottedLine(
                      dashColor: Colors.white.withOpacity(0.5),
                      dashLength: 3,
                      lineLength: MediaQuery.sizeOf(context).width * 0.75,
                    ),
                    menu_row(
                      imageText: "assets/images/classes-icon.png",
                      title: 'Classes',
                    ),
                    DottedLine(
                      dashColor: Colors.white.withOpacity(0.5),
                      dashLength: 3,
                      lineLength: MediaQuery.sizeOf(context).width * 0.75,
                    ),
                    menu_row(
                      imageText: "assets/images/clubs-icon.png",
                      title: 'Clubs',
                    ),
                    DottedLine(
                      dashColor: Colors.white.withOpacity(0.5),
                      dashLength: 3,
                      lineLength: MediaQuery.sizeOf(context).width * 0.75,
                    ),
                    menu_row(
                      imageText: "assets/images/payment.png",
                      title: 'Payments',
                    ),
                    DottedLine(
                      dashColor: Colors.white.withOpacity(0.5),
                      dashLength: 3,
                      lineLength: MediaQuery.sizeOf(context).width * 0.75,
                    ),
                    menu_row(
                      imageText: "assets/images/discussion-icon.png",
                      title: 'Discussion',
                    ),
                    DottedLine(
                      dashColor: Colors.white.withOpacity(0.5),
                      dashLength: 3,
                      lineLength: MediaQuery.sizeOf(context).width * 0.75,
                    ),
                    menu_row(
                      imageText: "assets/images/setting.png",
                      title: 'Settings',
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 54,
                height: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFFE7700)),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 40,
                      )),
                )),
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Image.asset(
                  "assets/images/menu-image.png",
                  height: 270,
                ),
              ),
              alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }
}

class menu_row extends StatelessWidget {
  const menu_row({
    Key? key,
    required this.imageText,
    required this.title,
  }) : super(key: key);
  final String imageText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 17,
        ),
        Row(
          children: [
            ImageIcon(
              AssetImage(imageText),
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(title, style: TextStyleConstants.styleMenu15)
          ],
        ),
        SizedBox(
          height: 17,
        ),
      ],
    );
  }
}
