import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/Auth/cubit.dart';
import 'package:techtest/controller/Auth/states.dart';
import 'package:techtest/view/screen/history_screen/history_screen.dart';
import 'package:techtest/view/widget/auth_widget/auth_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, AppLoginStates>(
        listener: (BuildContext context, state) {
      if (state is AppScuccessStates)
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HistoryScreen()),
            (route) => false);
    }, builder: (BuildContext context, AppLoginStates state) {
      LoginCubit getData = LoginCubit.get(context);
      return Scaffold(
        body: AuthScreenBuild(),
      );
    });
  }
}
