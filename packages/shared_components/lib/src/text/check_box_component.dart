import 'package:base_architecture/login/view_models/login.viewmodel.dart';
import 'package:base_architecture/shared/theme/dimens.dart';
import 'package:base_architecture/shared/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckBoxComponent extends StatefulWidget {
  const CheckBoxComponent({Key? key, required this.voidCallback})
      : super(key: key);
  final VoidCallback voidCallback;

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  late LoginViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<LoginViewModel>(context, listen: false);
    super.initState();
  }

  void _onCheckedChanged(bool newValue) => setState(() {
        viewModel.isChecked = newValue;
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            side: BorderSide(width: size_1, color: Colors.white),
            value: viewModel.isChecked,
            onChanged: (bool? value) {
              _onCheckedChanged(value!);
              this.widget.voidCallback();
            }),
        Text.rich(TextSpan(text: 'I agree with the  ', children: [
          TextSpan(text: 'Terms & Conditions', style: underLineTextStyle)
        ])),
      ],
    );
  }
}
