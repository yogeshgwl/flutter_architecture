import 'package:base_architecture/gen/assets.gen.dart';
import 'package:base_architecture/login/view_models/login.viewmodel.dart';
import 'package:base_architecture/shared/theme/dimens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFieldFormPassword extends StatefulWidget {
  const TextFieldFormPassword({Key? key, required this.voidCallback}) : super(key: key);
  final VoidCallback voidCallback;
  @override
  State<TextFieldFormPassword> createState() => _TextFieldFormPasswordState();
}

class _TextFieldFormPasswordState extends State<TextFieldFormPassword> {
  final TextEditingController passwordController = TextEditingController();
  late LoginViewModel viewModel;
  bool passwordVisible = false;

  @override
  void initState() {
    viewModel = Provider.of<LoginViewModel>(context, listen: false);
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: passwordController,
        onChanged: (userName) {
          viewModel.password = passwordController.text;
          this.widget.voidCallback();
        },
        cursorColor: Colors.white,
        autofocus: false,
        textCapitalization: TextCapitalization.none,
        obscureText: !passwordVisible,
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.white, fontSize: size_16),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: size_16,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(size_4),
              topRight: Radius.circular(size_4),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(size_4),
              topRight: Radius.circular(size_4),
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(size_4),
              topRight: Radius.circular(size_4),
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(size_4),
              topRight: Radius.circular(size_4),
            ),
          ),
          suffixIconColor: Colors.white,
          suffixIcon: IconButton(
            icon:
            Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            },
          ),
          prefixIconConstraints:
          BoxConstraints(minWidth: size_50, maxHeight: size_20),
          prefixIcon: Container(
            padding: const EdgeInsets.only(right: size_10),
            child: Assets.images.password.image(),
          ),
        ),
        style: Theme
            .of(context)
            .textTheme
            .bodyText1,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Password can't be empty";
          }
          return null;
        });
  }
}
