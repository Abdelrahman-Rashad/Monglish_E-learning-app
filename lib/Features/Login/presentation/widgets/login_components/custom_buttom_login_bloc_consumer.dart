import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_sit/core/constants/api_constants.dart';
import 'package:quantum_sit/core/widgets/buttom_navigator_bar.dart';
import '../../../../Home/presentation/statemanagment/cubit/home_cubit_cubit.dart';
import '../../statemangment/cubit/login_cubit_cubit.dart';
import 'custom_login_buttom.dart';

class CustomButtomLoginConsumer extends StatelessWidget {
  const CustomButtomLoginConsumer({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubitCubit, LoginCubitState>(
      builder: (context, state) {
        return state is LoginCubitLoading
            ? CircularProgressIndicator()
            : CustomLoginButtom(text: "login", onTap: onTap);
      },
      listener: (context, state) {
        if (state is LoginCubitSuccess) {
          //log(state.loginInfo.toString());
          ApiConstants.TOKEN = state.loginInfo.token;
          ApiConstants.ID = state.loginInfo.data!.id.toString();
          final cubit = context.read<HomeCubitCubit>();
          cubit.makeGetStudentInfo(ApiConstants.ID!);
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (contxt) => ButtomNavigatorBarPage()));
        } else if (state is LoginCubitFailed) {
          SnackBar snackBar = SnackBar(
              content: Text(
            state.errmassage,
          ));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }
}
