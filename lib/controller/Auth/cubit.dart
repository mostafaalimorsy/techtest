
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/Auth/states.dart';
import 'package:techtest/controller/constant.dart';
import 'package:techtest/model/sigin_model/model.dart';

class LoginCubit extends Cubit<AppLoginStates> {
  LoginCubit() : super(IntialAppLoginStates ());

  static LoginCubit get(context) => BlocProvider.of(context);

  void CreatUser(
      {required String uId,
        }) async {
    emit(AppLoadingCreateUsersStates());
    UserModel model = UserModel(
        uId: uId,
    );
    FirebaseFirestore.instance.collection('users').doc(uId)
        .set(model.toMap())
        .then((value) {
    });
  }


  // Auth data TO API
  void PostLogin() async {
    emit(AppLoadingStates());
    FirebaseAuth.instance
        .signInAnonymously()
        .then((value) {
      print(value.user!.email);
      var id= value.user!.uid;
      uId =value.user!.uid;
      print(value.user!.uid);
      CreatUser(uId: value.user!.uid);
      emit(AppScuccessStates(id));
    });
  }




  }


