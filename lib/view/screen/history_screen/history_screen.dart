import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/app/cubit.dart';
import 'package:techtest/controller/app/states.dart';
import 'package:techtest/view/screen/add_weight/add_weight.dart';
import 'package:techtest/view/screen/auth_screen/auth_scrren.dart';
import 'package:techtest/view/widget/history_widget/history_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state) {
        if (state is UserSignOutSuccessState)
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => AuthScreen() ), (route) => false);
      },
      builder: (BuildContext context, AppStates state) {
        AppCubit getData = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Weight History"),
            actions: [
              IconButton(
                  onPressed: () {

                    getData.deletweight();
                  },
                  icon: Icon(Icons.delete_outline)),
              IconButton(
                  onPressed: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddWeight()));
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    getData.signOut(context);
                  },
                  icon: Icon(Icons.logout)),
            ],
          ),
          body: ConditionalBuilder(
            condition: getData.weight.length > 0 ,
          fallback: (BuildContext context) { 
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 5,),
                    Text("Data Dowenloading"),
                  ],
                ),
              );
          },
          builder: (BuildContext context) { 
            return HistoryBuild();
          },
          ),
        );
      },
    );
  }
}
