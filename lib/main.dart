import 'package:chat_gpt/feature/view/subscription_view.dart';
import 'package:chat_gpt/product/constants/string_constont.dart';
import 'package:chat_gpt/product/theme/dark_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// App
class MyApp extends StatelessWidget {
  /// App const
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConstant.appTitle,
      home: const SubscriptionView(),
      theme: DarkTheme().darkTheme,
    );
  }
}
