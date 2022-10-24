class LabelModel {
  String? id;
  String? idBoard;
  String? name;
  String? color;

  LabelModel({
    this.id,
    this.idBoard,
    this.name,
    this.color,
  });

  LabelModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idBoard = json['idBoard'];
    name = json['name'];
    color = json['color'];
  }
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idBoard': idBoard,
      'name': name,
      'color': color,
    };
  }

  
}
