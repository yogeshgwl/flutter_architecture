import 'package:base_architecture/shared/theme/dimens.dart';
import 'package:base_architecture/shared/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CheckBoxComponent extends StatefulWidget {
  const CheckBoxComponent({Key? key}) : super(key: key);

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  bool isChecked = false;

  void _onCheckedChanged(bool newValue) => setState(() {
        isChecked = newValue;
        if (isChecked) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            side: BorderSide(width: size_1, color: Colors.white),
            value: isChecked,
            onChanged: (bool? value) {
              _onCheckedChanged(value!);
            }),
        Text.rich(TextSpan(text: 'I agree with the  ', children: [
          TextSpan(text: 'Terms & Conditions', style: underLineTextStyle)
        ])),
      ],
    );
  }
}
