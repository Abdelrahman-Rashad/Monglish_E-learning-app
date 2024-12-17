// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quantum_sit/core/constants/text_styles.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    Key? key,
    required this.text,
    required this.myController,
  }) : super(key: key);
  final String text;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 17, color: const Color(0xd9343f4b), fontFamily: 'Lato'),
        maxLines: null,
        textCapitalization: TextCapitalization.sentences,
        controller: myController,
        decoration: InputDecoration(
            hintStyle: TextStyleConstants.styleLogingray14,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1.30, color: Color(0x7F434050)),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: text));
  }
}
