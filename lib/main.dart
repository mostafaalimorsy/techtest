import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/controller/Auth/cubit.dart';
import 'package:techtest/controller/app/cubit.dart';
import 'package:techtest/controller/app/states.dart';
import 'package:techtest/controller/bloc_observe.dart';
import 'firebase_options.dart';
import 'view/screen/auth_screen/auth_scrren.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);



  BlocOverrides.runZoned(
        () {
      runApp(MyApp( ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> LoginCubit()),
        BlocProvider(create: (context)=> AppCubit()..getUserData()..getHistory()),
      ],
      child: BlocConsumer <AppCubit ,AppStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context,  state) {
          return   MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            home: AuthScreen(),
          );
        },
      ),
    );
  }
}

