import 'package:base_architecture/gen/assets.gen.dart';
import 'package:base_architecture/shared/theme/dimens.dart';
import 'package:flutter/material.dart';


class TextFieldFormUsername extends StatefulWidget {
  const TextFieldFormUsername({Key? key}) : super(key: key);

  @override
  State<TextFieldFormUsername> createState() => _TextFieldFormUsernameState();
}

class _TextFieldFormUsernameState extends State<TextFieldFormUsername> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: userNameController,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.next,
      cursorColor: Colors.white,
      autofocus: false,
      textCapitalization: TextCapitalization.none,
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Username',
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
        prefixIconConstraints:
            BoxConstraints(minWidth: size_50, maxHeight: size_20),
        prefixIcon: Container(
          padding: const EdgeInsets.only(right: size_10),
          child: Assets.images.person.image(),
        ), //Icon(Icons.person, color: Colors.white),
      ),
      style: Theme.of(context).textTheme.bodyText1,
      keyboardType: TextInputType.name,
      //validator: _model.textController1Validator.asValidator(context),
    );
  }
}
