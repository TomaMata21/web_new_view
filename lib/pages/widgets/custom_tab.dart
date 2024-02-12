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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: $styles.colors.tabBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Container(
                decoration: BoxDecoration(
                  color: _selectedIndex == 0
                      ? $styles.colors.button
                      : $styles.colors.tabBackground,
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(15),
                  ),
                ),
                child: TabButton(
                  label: "Sign Up",
                  textColor: _selectedIndex == 0
                      ? $styles.colors.white
                      : $styles.colors.button,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Container(
    decoration: BoxDecoration(
    color: _selectedIndex == 1
    ? $styles.colors.button
        : $styles.colors.tabBackground,
    borderRadius: const BorderRadius.horizontal(
    right: Radius.circular(15),
    ),
    ),
                child: TabButton(
                  label: "Sign in",
                  textColor: _selectedIndex == 1
                      ? $styles.colors.white
                      : $styles.colors.button,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
