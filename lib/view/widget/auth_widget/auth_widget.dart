import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/Auth/cubit.dart';
import 'package:techtest/controller/Auth/states.dart';

Widget AuthScreenBuild ()
{
  return BlocConsumer <LoginCubit, AppLoginStates>(
    listener: (BuildContext context, state) {  },
    builder: (BuildContext context, AppLoginStates state) {
      LoginCubit getData = LoginCubit.get(context);
      return Center(
        child: Container(
          height: 40,
          width: 300,
          color: Colors.blueAccent,
          child: TextButton(
            onPressed: (){
              getData.PostLogin();
            },
            child: const Text("Signing Anonymously",style: TextStyle(color: Colors.white),),
          ),
        ),
      );
    },
  );
}