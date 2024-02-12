import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_new_view/configs/assets.dart';
import 'package:web_new_view/configs/styles.dart';
import 'package:web_new_view/pages/widgets/custom_button.dart';
import 'package:web_new_view/pages/widgets/custom_password_input.dart';
import 'package:web_new_view/pages/widgets/custom_social_auth_button.dart';
import 'package:web_new_view/pages/widgets/custom_tab.dart';
import 'package:web_new_view/pages/widgets/custom_text_input.dart';
import 'package:web_new_view/pages/widgets/google_auth_button.dart';
import 'package:web_new_view/pages/widgets/or_widget.dart';
import 'package:web_new_view/pages/widgets/privacy_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: $styles.colors.background,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width * 0.40,
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
                Wrap(
                  spacing: width * 0.01,
                  runSpacing: height * 0.01,
                  children: [
                    const GoogleAuthButton(),
                    CustomSocialAuthButton(
                      asset: Assets.facebook,
                      onPressed: () {},
                    ),
                    // Gap(height * 0.01),
                    CustomSocialAuthButton(
                      asset: Assets.apple,
                      onPressed: () {},
                    ),
                  ],
                ),
                Gap(height * 0.03),
                const OrWidget(),
                Gap(height * 0.03),
                const CustomTab(),
                Gap(height * 0.03),
                const CustomTextInput(
                  label: "Name",
                  hintText: "John Doe",
                ),
                const CustomTextInput(
                  label: "Email",
                  hintText: "johndoe@email.com",
                  textInputType: TextInputType.emailAddress,
                ),
                const CustomPasswordInput(
                  label: "Mot de passe",
                  hintText: "******",
                ),
                Gap(height * 0.02),
                const PrivacyButton(),
                Gap(height * 0.03),
                const CustomButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
