import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:web_new_view/configs/assets.dart';
import 'package:web_new_view/configs/styles.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: 50,
      width:  width * 0.29,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: $styles.colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: $styles.colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: $styles.colors.border, width: 0.4),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const Gap(15),
            SvgPicture.asset(
              Assets.google,
              height: 25,
              width: 25,
            ),
            const Gap(10),
            Text(
              "Sign in with Google",
              style: $styles.text.googleButton,
            ),
            // Gap(15),
          ],
        ),
      ),
    );
  }
}
