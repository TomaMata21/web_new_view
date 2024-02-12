import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class PrivacyButton extends StatefulWidget {
  const PrivacyButton({super.key});

  @override
  State<PrivacyButton> createState() => _PrivacyButtonState();
}

class _PrivacyButtonState extends State<PrivacyButton> {
  bool isAgree = false;

  void onChanged(bool? value) => setState(() {
        isAgree = value ?? false;
      });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isAgree,
          onChanged: onChanged,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        GestureDetector(
          onTap: () => onChanged(!isAgree),
          child: Text.rich(
            TextSpan(text: "I agree to the ", children: [
              TextSpan(
                text: "Terms & Conditions",
                style: $styles.text.bodyLarge.copyWith(
                  color: $styles.colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ]),
            style: $styles.text.bodyLarge.copyWith(
              color: $styles.colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
