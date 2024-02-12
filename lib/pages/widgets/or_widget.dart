import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Divider(
            color: $styles.colors.border,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("Or", style: $styles.text.caption,),
        ),
        Expanded(
          child: Divider(
            color: $styles.colors.border,
          ),
        ),
      ],
    );
  }
}
