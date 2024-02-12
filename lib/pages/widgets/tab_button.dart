import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.label,
    this.onTap,
  });
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width * 0.15,
        height: height * 0.05,
        child: Center(
          child: Text(
            label,
            style: $styles.text.button,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
