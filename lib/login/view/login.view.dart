import 'package:base_architecture/login/view_models/login.viewmodel.dart';
import 'package:base_architecture/shared/buttons/appbutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_components/shared_components.dart';
import 'package:shared_components/src/text/check_box_component.dart';
import 'package:shared_components/src/text/h2_text.component.dart';
import 'package:shared_components/src/text/textfield_form_password.dart';
import 'package:shared_components/src/text/textfield_form_username.dart';

import '../../shared/routes/routes.dart' as route;
import '../../shared/theme/dimens.dart';
import '../../shared/theme/text_styles.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<LoginViewModel>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _voidCallback() {
      setState(() {
        print("================${viewModel.isChecked}");
        viewModel.validateCheckbox();
      });
    }
    void _doLogin() {
      setState(() {
        viewModel.navigateToDashBoard();
      });
    }
    return Consumer<LoginViewModel>(
      builder: (_, model, child) {
        if (model.isLoading) {
          return child ?? const SizedBox();
        }
        return CustomScaffold(
          appbarBackground: false,
          enableGutter: false,
          child: SingleChildScrollView(
            key: const Key('singleChildScrollView'),
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpacerVertical(20),
                H2TextComponent(
                  text: 'Login',
                  leftValue: size_30,
                  bottomValue: size_10,
                ),
                Container(
                  margin: EdgeInsets.all(size_20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFieldFormUsername(voidCallback: _voidCallback),
                      SpacerVertical(20),
                      TextFieldFormPassword(voidCallback: _voidCallback),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, route.NamedRoute.forgotPassword);
                        },
                        child: Container(
                            margin: EdgeInsets.only(
                                top: size_15,
                                right: 0,
                                bottom: size_0,
                                left: size_10),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                  fontSize: size_16,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: size_10, right: 0, top: 0, bottom: 0),
                    child: CheckBoxComponent(voidCallback: _voidCallback)),
                SpacerVertical(size_20),
                Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    alignment: Alignment.center,
                    child: AppButton(voidCallback: (isButtonEnable) {
                      if (isButtonEnable) {
                        _doLogin();
                      }
                    })),
                SpacerVertical(size_20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",
                        style: TextStyle(
                            fontSize: size_16, fontWeight: FontWeight.normal)),
                    Text("SignUp", style: underLineTextStyle)
                  ],
                )
              ],
            ),
          ),
        );
      },
      child: LoadingComponent(),
    );
  }
}
