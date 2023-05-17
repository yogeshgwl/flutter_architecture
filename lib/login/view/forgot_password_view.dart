import 'package:app_theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_components/shared_components.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appbarBackground: false,
        enableGutter: false,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Forgot Password", style: AppTheme.theme.textTheme.displayMedium)],
        ));
  }
}
