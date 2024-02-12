import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_new_view/configs/styles.dart';

class CustomSocialAuthButton extends StatelessWidget {
  const CustomSocialAuthButton({
    super.key,
    required this.asset,
    this.onPressed,
  });

  final String asset;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: $styles.colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: $styles.colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: $styles.colors.border, width: 0.4),
        ),
      ),
      onPressed: onPressed,
      child: SvgPicture.asset(
        asset,
        width: 25,
        height: 25,
      ),
    );
  }
}
