part of 'login_cubit_cubit.dart';

sealed class LoginCubitState extends Equatable {
  const LoginCubitState();

  @override
  List<Object> get props => [];
}

final class LoginCubitInitial extends LoginCubitState {}

final class LoginCubitLoading extends LoginCubitState {}

final class LoginCubitSuccess extends LoginCubitState {
  final Login loginInfo;

  const LoginCubitSuccess(this.loginInfo);
}

final class LoginCubitFailed extends LoginCubitState {
  final String errmassage;

  const LoginCubitFailed(this.errmassage);
}
