
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/app/states.dart';
import 'package:techtest/controller/constant.dart';
import 'package:techtest/model/sigin_model/model.dart';
import 'package:techtest/model/wight_model/model.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(IntialAppStates ());

  static AppCubit get(context) => BlocProvider.of(context);



   UserModel? model;
    var id;
  void getUserData(){
    emit(AppLoadingStates());
    FirebaseFirestore.instance.collection('users').doc("uId").get().then((value) {
      model= UserModel.fromJson(value.data() as Map<String,dynamic>);
      print(value.data());
      emit(AppScuccessStates());
    });
  }


  void createHistory({
    required String? dateTime,
    required String? weight,
  }) {
    emit(CreatePostsLoadingState());
    WeightUserModel Model = WeightUserModel(
      uId: uId,
      date: dateTime,
      weight: weight,
    );
    FirebaseFirestore.instance
        .collection("weight")
        .add(Model.toMap())
        .then((value) {
      emit(CreatePostsSucsessState());
      print (id);
    }).catchError((erorr) {
      emit(CreatePostsSucsessState());
    });
  }



  List<WeightUserModel> weight = [];
  List<String> uID = [];
  WeightUserModel? weightModel;
  void getHistory() {
    emit(GetPostsLoadingState());
    FirebaseFirestore.instance.collection('weight').orderBy("date",descending: true).snapshots().listen((event) {
      weight=[];
      for (var element in event.docs) {

        uID.add(element.id);
        weight.add(WeightUserModel.fromJson(element.data()));
      }
      emit(GetPostsSucsessState());
      print("uID");
      print(uID);

    });
  }



  void signOut(context) {
    FirebaseAuth.instance.signOut().then((value) {
      emit(UserSignOutSuccessState());
    }).catchError((erorr) {
      print(erorr.toString());
      emit(UserSignOutErorrState());
    });
  }

void deletweight()
{
  FirebaseFirestore.instance
      .collection("weight")
      .get().then((value){
    value.docs.forEach((element) {
      FirebaseFirestore.instance.collection("weight").doc(element.id).delete().then((value){
        print("Success!");
        emit(DeleteSuccessState());

      });
    });
  });
}









}