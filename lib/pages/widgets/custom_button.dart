import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width * 0.4,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: $styles.colors.button,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Sign up',
          style: $styles.text.titleMedium.copyWith(
            color: $styles.colors.white,
          ),
        ),
      ),
    );
  }
}
