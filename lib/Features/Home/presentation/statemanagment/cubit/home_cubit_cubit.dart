import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:quantum_sit/Features/Home/data/models/student_info/student_info.dart';
import 'package:quantum_sit/Features/Home/domain/usecases/get_student_info_usecase.dart';

part 'home_cubit_state.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  HomeCubitCubit(
    this.getStudentInfoUsecase,
  ) : super(HomeCubitInitial());

  final GetStudentInfoUsecase getStudentInfoUsecase;

  Future makeGetStudentInfo(String id) async {
    emit(HomeCubitLoading());
    var result = await getStudentInfoUsecase.execute(id);
    result.fold((l) => emit(HomeCubitFailed(l.errmassage)),
        (r) => emit(HomeCubitSuccess(r)));
  }

  @override
  void onChange(Change<HomeCubitState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
