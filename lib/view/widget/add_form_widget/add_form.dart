import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/app/cubit.dart';
import 'package:techtest/controller/app/states.dart';
import 'package:techtest/view/widget/custom_widget/test_form_field.dart';

Widget AddForm() {

  var formKey = GlobalKey<FormState>();
  var weigdtController= TextEditingController();
  var dataController= TextEditingController();
  return BlocConsumer <AppCubit ,AppStates>(
    listener: (BuildContext context, state) {  },
    builder: (BuildContext context, AppStates state) {
      AppCubit getData =AppCubit.get(context);
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultTextForm(
                type: TextInputType.datetime,
                controller: dataController,
                labelText: "Date",
                hintText: "20/20/2020",
                icon: Icons.date_range,
                onTap2: () {
                  showDatePicker(context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.parse('2525-12-30')).
                  then((value) {
                    dataController.text = "${value}"  ;
                  }

                  );
                }),
              SizedBox(height: 10,),
              defaultTextForm(
                type: TextInputType.number,
                controller: weigdtController,
                  labelText: "Weight",
                  hintText: "180",
                  icon: Icons.balance_outlined
              ),
              SizedBox(height: 20,),
              Container(
                height: 40,
                width: 60,
                color: Colors.blueAccent,
                child: TextButton(
                  onPressed: (){
                    getData.createHistory(dateTime: dataController.text, weight: weigdtController.text );
                  },
                  child: Text("Save",style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}