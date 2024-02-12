import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.label,
    this.textColor,
  });
  final String label;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Center(
        child: Text(
          label,
          style: $styles.text.button.copyWith(
            color: textColor ?? $styles.colors.button,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
