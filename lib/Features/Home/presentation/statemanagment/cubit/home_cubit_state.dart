part of 'home_cubit_cubit.dart';

sealed class HomeCubitState extends Equatable {
  const HomeCubitState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeCubitState {}

final class HomeCubitLoading extends HomeCubitState {}

final class HomeCubitSuccess extends HomeCubitState {
  final StudentInfo studentInfo;

  HomeCubitSuccess(this.studentInfo);
}

final class HomeCubitFailed extends HomeCubitState {
  final String errmassage;

  HomeCubitFailed(this.errmassage);
}
