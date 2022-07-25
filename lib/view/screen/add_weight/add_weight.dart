import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/app/cubit.dart';
import 'package:techtest/controller/app/states.dart';
import 'package:techtest/view/screen/history_screen/history_screen.dart';
import 'package:techtest/view/widget/add_form_widget/add_form.dart';

class AddWeight extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit ,AppStates> (
      listener: (BuildContext context, state) {
        if(state is CreatePostsSucsessState)
          Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) => HistoryScreen()), (route) => false);
      },
      builder: (BuildContext context, AppStates state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Add New Weight"),
          ),
          body: AddForm(),
        );
      },
    );
  }
}
