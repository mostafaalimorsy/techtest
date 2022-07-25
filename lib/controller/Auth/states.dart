abstract class AppLoginStates {}



class IntialAppLoginStates extends AppLoginStates {}
class AppLoadingStates extends AppLoginStates {}
class AppScuccessStates extends AppLoginStates {
  final String Uid;

  AppScuccessStates(this.Uid);
}
class AppLoadingCreateUsersStates extends AppLoginStates {}
class AppSucessCreateUsersStates extends AppLoginStates {}
class AppErrorCreateUsersStates extends AppLoginStates {}
class AppErrorStates extends AppLoginStates {}
