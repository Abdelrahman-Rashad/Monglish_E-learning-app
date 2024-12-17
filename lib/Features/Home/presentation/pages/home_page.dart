import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_sit/Features/Home/data/models/student_info/student_info.dart';
import 'package:quantum_sit/Features/Home/presentation/statemanagment/cubit/home_cubit_cubit.dart';
import 'package:quantum_sit/Features/Home/presentation/widgets/home_components/profile_image.dart';
import '../widgets/home_components/clender_home.dart';
import '../widgets/home_components/feedback_container.dart';
import '../widgets/home_components/info_container.dart';
import '../widgets/home_components/juniors_container.dart';
import '../widgets/home_components/level_info_container.dart';
import '../widgets/home_components/package_info_container.dart';
import '../widgets/home_components/rewords_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searchActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.17,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/background.png",
                        fit: BoxFit.fill,
                      ),
                      SizedBox.expand(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.notifications_none,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      searchActive == false
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  searchActive = !searchActive;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                                size: 30,
                                              ))
                                          : search_bar()
                                    ],
                                  ),
                                  ProfileImage(
                                    h: 50,
                                    w: 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.75,
                  child: SingleChildScrollView(
                    child: BlocConsumer<HomeCubitCubit, HomeCubitState>(
                        builder: (context, state) {
                          if (state is HomeCubitLoading) {
                            return Align(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator());
                          } else if (state is HomeCubitSuccess) {
                            return Home_body(
                              studentInfo: state.studentInfo,
                            );
                          } else if (state is HomeCubitFailed) {
                            SnackBar snackBar = SnackBar(
                                content: Text(
                              state.errmassage,
                            ));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                          return Center(
                            child: Text("No data"),
                          );
                        },
                        listener: (context, state) {}),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container search_bar() {
    return Container(
      width: 250,
      height: 35,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25,
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    searchActive = !searchActive;
                  });
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 25,
                )),
          ),
        ],
      ),
    );
  }
}

class Home_body extends StatelessWidget {
  const Home_body({
    Key? key,
    required this.studentInfo,
  }) : super(key: key);

  final StudentInfo studentInfo;

  @override
  Widget build(BuildContext context) {
    String? level = studentInfo.data!.level!.name;
    String root = studentInfo.data!.level!.field!.root!.name!;
    String? filed = studentInfo.data!.level!.field!.name;
    String complete_info_level = root + ' - ' + filed! + ' - ' + level!;
    return Column(
      children: [
        info_container(
          student_data: studentInfo.data!,
        ),
        level_info_container(
          student_data: studentInfo.data!,
          complete_info_level: complete_info_level,
        ),
        package_info_container(
          student_data: studentInfo.data!,
        ),
        CalendarScreen(),
        juniors_container(
          student_data: studentInfo.data!,
          complete_info_level: complete_info_level,
        ),
        rewords(),
        feedback_container(),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
