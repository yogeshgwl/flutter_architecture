import 'package:base_architecture/home/model/carousel.model.dart';
import 'package:base_architecture/login/repository/login_repo.dart';
import 'package:base_architecture/shared/view_models/loading.viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends LoadingViewModel {
  bool isChecked = false;
  bool isButtonEnabled = false;
  String username = "";
  String password = "";

  LoginViewModel({
    required this.repo,
  });

  final LoginRepo repo;

  CarouselModel get loginModel => _loginModel;

  set loginModel(CarouselModel loginModel) {
    _loginModel = loginModel;
    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      isLoading = true;

      _loginModel = await repo.fetchData();
    } catch (exc) {
      debugPrint('Error in _fetchData : ${exc.toString()}');
    }

    isLoading = false;
    notifyListeners();
  }

  // INTERNALS
  CarouselModel _loginModel = CarouselModel();

  validateCheckbox() {
    if (username.trim().isNotEmpty && password.trim().isNotEmpty && isChecked) {
      isButtonEnabled = true;
    } else {
      isButtonEnabled = false;
    }
    notifyListeners();
  }

  void navigateToDashBoard() {

  }
}
