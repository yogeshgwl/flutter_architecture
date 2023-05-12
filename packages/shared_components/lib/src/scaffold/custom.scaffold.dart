import 'package:flutter/material.dart';

import 'package:app_theme/app_theme.dart' show AppColors;

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    required this.child,
    this.enableGutter = true,
    this.appbarBackground = true,
  }) : super(key: key);

  final Widget child;
  final bool enableGutter;
  final bool appbarBackground;

  Widget get _checkGutter {
    if (enableGutter) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: child,
      );
    }

    return child;
  }

  @override
  Widget build(BuildContext context) {
    if (appbarBackground)
      return Scaffold(
        appBar: AppBar(backgroundColor: AppColors.primaryBlue),
        backgroundColor: AppColors.primaryBlue,
        body: SafeArea(child: _checkGutter),
      );
    else
      return Scaffold(
        backgroundColor: AppColors.primaryBlue,
        body: SafeArea(child: _checkGutter),
      );
  }
}
