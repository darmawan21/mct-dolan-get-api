import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  String? id;
  String? name;
  String? desc;
  List<LabelModel>? labels;
  List<ChecklistModel>? checklists;

  DataModel(this.id, this.name, this.desc, this.checklists, this.labels);

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

@JsonSerializable()
class ChecklistModel {
  final String? id;
  final String? name;
  final String? IdBoard;
  List<CheckItemModel>? checkItems;

  ChecklistModel(this.id, this.name, this.IdBoard, this.checkItems);

  factory ChecklistModel.fromJson(Map<String, dynamic> json) =>
      _$ChecklistModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChecklistModelToJson(this);
}

@JsonSerializable()
class CheckItemModel {
  final String? id;
  final String? name;
  final String? state;

  CheckItemModel(this.id, this.name, this.state);

  factory CheckItemModel.fromJson(Map<String, dynamic> json) =>
      _$CheckItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CheckItemModelToJson(this);
}

@JsonSerializable()
class LabelModel {
  String? id;
  String? idBoard;
  String? name;
  String? color;

  LabelModel({this.id,
    this.idBoard,
    this.name,
    this.color,});

  factory LabelModel.fromJson(Map<String, dynamic> json) =>
      _$LabelModelFromJson(json);

  Map<String, dynamic> toJson() => _$LabelModelToJson(this);
}
