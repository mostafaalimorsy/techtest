class UserModel {
  late String uId;

  UserModel({
    required this.uId,
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'];

  }
  Map<String, dynamic> toMap() {
    return {
      'uId': uId,
    };
  }
}