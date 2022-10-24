import 'package:mct_dolan/data/models/checkItems_model.dart';

class ChecklistModel {
  String? id;
  String? name;
  String? idBoard;
  List<CheckItemsModel>? checkItems;

  ChecklistModel({
    this.id,
    this.name,
    this.idBoard,
    this.checkItems,
  });

  ChecklistModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    idBoard = json['idBoard'];
    checkItems = json['checkItems']
        .map<ChecklistModel>((checkItem) => CheckItemsModel.fromJson(checkItem))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'idBoard': idBoard,
      'checkItems': checkItems!.map((checkItem) => checkItem.toJson()).toList(),
    };
  }
}
