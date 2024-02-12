import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:web_new_view/configs/styles.dart';
import 'package:web_new_view/pages/widgets/tab_button.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({super.key});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  double end = 0;

  void onSignUp() {
    if (end != 0) {
      setState(() {
     end = 0;
      });
    }
  }

  void onSignIn() {
    if (end!= 1.63) {
      setState(() {
        end = 1.63;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      height: height * 0.05,
      decoration: BoxDecoration(
        color: $styles.colors.tabBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 4,
            bottom: 4,
            left: 4,
            child: Container(
              width: width * 0.15,
              height: height * 0.04,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: $styles.colors.button,
                borderRadius: BorderRadius.circular(10),
              ),
            ).animate().slideX(
                  end: end,
                  curve: Curves.elasticInOut,
                  delay: const Duration(milliseconds: 2000),
                ),
          ),
          // AnimatedPositioned(
          //   duration: const Duration(milliseconds: 3200),
          //   curve: Curves.bounceIn,
          //   top: 4,
          //   left: left,
          //   right: right,
          //   bottom: 4,
          //   child: Container(
          //     width: width * 0.15,
          //     height: height * 0.04,
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: $styles.colors.button,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabButton(
                label: "Sign Up",
                onTap: onSignUp,
              ),
              TabButton(
                label: "Sign in",
                onTap: onSignIn,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
