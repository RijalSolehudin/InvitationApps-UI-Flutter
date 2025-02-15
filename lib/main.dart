import 'package:flutter/material.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/presentation/auth/pages/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: appColors.primary),
          colorScheme: ColorScheme.fromSeed(seedColor: appColors.primary),
          scaffoldBackgroundColor: appColors.white),
      home: const Wrapper(),
    );
  }
}
