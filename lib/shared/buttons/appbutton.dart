import 'package:base_architecture/shared/theme/dimens.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(size_10),
        child: SizedBox(
          width: sizeButtonWidth,
          child: Container(
            margin: const EdgeInsets.all(size_10),
            height: sizeButtonHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            alignment: Alignment.center,
            child: Text(
              'Login'/*AppLocalizations.of(context)!.login*/,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: size_20,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ));
  }
}
