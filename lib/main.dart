import 'package:flutter/material.dart';
import 'package:web_new_view/configs/theme.dart';
import 'package:web_new_view/pages/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const AuthPage(),
    );
  }
}
