import 'package:flutter/material.dart';
import 'package:web_new_view/configs/styles.dart';

class CustomPasswordInput extends StatefulWidget {
  const CustomPasswordInput({
    super.key,
    required this.label,
    required this.hintText,
    this.textInputType = TextInputType.visiblePassword,
    this.textInputAction = TextInputAction.done,
  });
  final String label;
  final String hintText;

  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  @override
  State<CustomPasswordInput> createState() => _CustomPasswordInputState();
}

class _CustomPasswordInputState extends State<CustomPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: TextFormField(
        obscureText: _obscureText,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          label: Text(
            widget.label,
            style: $styles.text.bodyMedium.copyWith(
              color: $styles.colors.border,
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            color: $styles.colors.border,
          ),
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: $styles.colors.border),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: $styles.colors.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: $styles.colors.border),
          ),
        ),
      ),
    );
  }
}
