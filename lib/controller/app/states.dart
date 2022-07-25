abstract class AppStates {}

class IntialAppStates extends AppStates {}
class AppLoadingStates extends AppStates {}
class AppScuccessStates extends AppStates {}
class AppErrorStates extends AppStates {}

class CreatePostsLoadingState extends AppStates {}
class CreatePostsSucsessState extends AppStates {}
class CreatePostsErorrState extends AppStates {
  final String erorr;

  CreatePostsErorrState(this.erorr);
}

class GetPostsLoadingState extends AppStates {}
class GetPostsSucsessState extends AppStates {}
class GetPostsErorrState extends AppStates {
  final String erorr;

  GetPostsErorrState(this.erorr);
}

class DeleteSuccessState extends AppStates {}

class UserSignOutSuccessState extends AppStates {}
class UserSignOutErorrState extends AppStates {}

