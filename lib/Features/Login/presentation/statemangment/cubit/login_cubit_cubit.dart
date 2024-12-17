import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quantum_sit/Features/Login/data/models/login/login.dart';
import 'package:quantum_sit/Features/Login/data/models/login_mooglish_input.dart';
import 'package:quantum_sit/Features/Login/domain/usecases/login_usecase.dart';

part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  LoginCubitCubit(this.loginUsecase) : super(LoginCubitInitial());
  final LoginUsecase loginUsecase;

  Future makeLogin(LoginMooglishInput loginMooglishInput) async {
    emit(LoginCubitLoading());
    var data = await loginUsecase.execute(loginMooglishInput);
    data.fold((l) => emit(LoginCubitFailed(l.errmassage)),
        (r) => emit(LoginCubitSuccess(r)));
  }

  @override
  void onChange(Change<LoginCubitState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
