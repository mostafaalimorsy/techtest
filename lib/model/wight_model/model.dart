class WeightUserModel {
  String? uId;
  String? weight;
  String? date;
  WeightUserModel({
    this.uId,
    this.weight,
    this.date,
  });
  WeightUserModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'];
    weight = json['weight'];
    date = json['date'];
  }
  Map<String, dynamic> toMap() {
    return {
      'uId': uId,
      'weight': weight,
      'date': date,
    };
  }
}