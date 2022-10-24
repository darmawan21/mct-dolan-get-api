import 'package:mct_dolan/data/models/label_model.dart';

class MctModel {
  String? id;
  String? name;
  String? desc;
  List<LabelModel>? label;

  MctModel({
    this.id,
    this.name,
    this.desc,
    this.label,
  });

  factory MctModel.fromJson(Map<String, dynamic> json) {
    return MctModel(
      id: json['id'],
      name: json['name'],
      desc: json['desc'],
    );
  }
}
