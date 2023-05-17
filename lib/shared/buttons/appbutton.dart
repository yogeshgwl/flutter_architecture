import 'package:base_architecture/shared/theme/dimens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_theme/app_theme.dart' show AppColors;
import '../../login/view_models/login.viewmodel.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key, required this.voidCallback}) : super(key: key);
  final Function voidCallback;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  late LoginViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<LoginViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _flag = viewModel.isButtonEnabled;
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              _flag ? AppColors.buttonOutline : AppColors.primaryBlueDisable)),
      onPressed: () => this.widget.voidCallback(viewModel.isButtonEnabled),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(size_10),
          child: SizedBox(
            width: sizeButtonWidth,
            child: Container(
              color: Colors.transparent,
              margin: const EdgeInsets.all(size_10),
              height: sizeButtonHeight,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Login'.toUpperCase() /*AppLocalizations.of(context)!.login*/,
                style: TextStyle(
                    backgroundColor: Colors.transparent,
                    color: Colors.white,
                    fontSize: size_20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          )),
    );
  }
}
