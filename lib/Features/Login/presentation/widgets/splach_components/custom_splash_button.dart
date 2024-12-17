// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:quantum_sit/Features/Login/domain/usecases/login_usecase.dart';
import 'package:quantum_sit/Features/Login/presentation/pages/login_page.dart';

import '../../../../../core/constants/text_styles.dart';
// import '../../../../Home/data/repository/home_repository_impl.dart';
// import '../../../../Home/domain/usecases/get_student_info_usecase.dart';
// import '../../../../Home/presentation/statemanagment/cubit/home_cubit_cubit.dart';
// import '../../../data/repository/login_repo_impl.dart';
// import '../../statemangment/cubit/login_cubit_cubit.dart';

class custom_splash_button extends StatelessWidget {
  const custom_splash_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
      )),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(color: Color(0xFFFE7700)),
        child: Center(
          child: Text(
            "Your Path to Fluency",
            textAlign: TextAlign.center,
            style: TextStyleConstants.styleLogin25,
          ),
        ),
      ),
    );
  }
}
