import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    required this.label,
    required this.hintText,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
  });

  final String label;
  final String hintText;

  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: TextFormField(
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: InputDecoration(
            label: Text(
              label,
              style: $styles.text.bodyMedium.copyWith(
                color: $styles.colors.border,
              ),
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: $styles.colors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: $styles.colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: $styles.colors.border),
            ),
          )),
    );
  }
}
