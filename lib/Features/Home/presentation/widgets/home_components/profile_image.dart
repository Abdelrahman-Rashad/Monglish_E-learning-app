// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: OvalBorder(
          side: BorderSide(width: 1, color: Color(0xFFFE7700)),
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(
          "assets/images/profile.png",
        ),
      ),
    );
  }
}
