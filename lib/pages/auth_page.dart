import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:web_new_view/configs/assets.dart';
import 'package:web_new_view/configs/styles.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: $styles.colors.background,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                "👋Its nice to see you",
                style: $styles.text.headline,
              ),
              Gap(height * 0.02),
              Text(
                "Join Our Blogging Community, Where Words Create Words and Friends Await",
                style: $styles.text.caption,
              ),
              Gap(height * 0.03),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: $styles.colors.white,
                  surfaceTintColor: Colors.white,
                  foregroundColor: $styles.colors.white,
                  elevation: 0,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: $styles.colors.border, width: 0.4),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Gap(width * 0.05),
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
                    Gap(width * 0.05),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
