class CheckItemsModel {
  String? id;
  String? name;
  String? state;

  CheckItemsModel({
    this.id,
    this.name,
    this.state,
  });

  CheckItemsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'state': state,
    };
  }
}
