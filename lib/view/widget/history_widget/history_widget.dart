import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/app/cubit.dart';
import 'package:techtest/controller/app/states.dart';

Widget HistoryBuild ()
{
  return BlocConsumer <AppCubit , AppStates>(
    listener: (BuildContext context, state) {  },
    builder: (BuildContext context, AppStates state) {
      AppCubit getData=AppCubit.get(context);
      return  ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: getData.weight.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 1,);
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(

            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey,
              height: 100,
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(

                    child: ListTile(
                      title: Center(child: Text("Wight is ${getData.weight[index].weight} KG")),
                      subtitle: Center(child: Text("${getData.weight[index].date}")),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    },
  );
}