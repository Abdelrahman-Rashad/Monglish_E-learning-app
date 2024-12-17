import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_sit/Features/Home/data/repository/home_repository_impl.dart';
import 'package:quantum_sit/Features/Home/domain/usecases/get_student_info_usecase.dart';
import 'package:quantum_sit/Features/Home/presentation/statemanagment/cubit/home_cubit_cubit.dart';
import 'package:quantum_sit/Features/Login/data/repository/login_repo_impl.dart';
import 'package:quantum_sit/Features/Login/domain/usecases/login_usecase.dart';
import 'package:quantum_sit/Features/Login/presentation/pages/splash_page.dart';
import 'package:quantum_sit/Features/Login/presentation/statemangment/cubit/login_cubit_cubit.dart';
import 'core/utiles/API/dio_helper/dio_helper.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  LoginCubitCubit(LoginUsecase(LoginRepoImpl()))),
          BlocProvider(
            create: (context) => HomeCubitCubit(
                GetStudentInfoUsecase(homeRepository: HomeRepositoryImpl())),
          )
        ],
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()));
  }
}
