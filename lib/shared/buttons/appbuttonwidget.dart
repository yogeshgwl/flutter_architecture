import 'package:flutter/material.dart';

import 'appbutton.dart';

class AppButtonWidget extends StatelessWidget {
  final VoidCallback voidCallback;

  const AppButtonWidget({Key? key, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => voidCallback(),
      child: const AppButton(),
    );
  }
}
