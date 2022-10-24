// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      json['id'] as String?,
      json['name'] as String?,
      json['desc'] as String?,
      (json['checklists'] as List<dynamic>?)
          ?.map((e) => ChecklistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['labels'] as List<dynamic>?)
          ?.map((e) => LabelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'labels': instance.labels,
      'checklists': instance.checklists,
    };

ChecklistModel _$ChecklistModelFromJson(Map<String, dynamic> json) =>
    ChecklistModel(
      json['id'] as String?,
      json['name'] as String?,
      json['IdBoard'] as String?,
      (json['checkItems'] as List<dynamic>?)
          ?.map((e) => CheckItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistModelToJson(ChecklistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'IdBoard': instance.IdBoard,
      'checkItems': instance.checkItems,
    };

CheckItemModel _$CheckItemModelFromJson(Map<String, dynamic> json) =>
    CheckItemModel(
      json['id'] as String?,
      json['name'] as String?,
      json['state'] as String?,
    );

Map<String, dynamic> _$CheckItemModelToJson(CheckItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
    };

LabelModel _$LabelModelFromJson(Map<String, dynamic> json) => LabelModel(
      id: json['id'] as String?,
      idBoard: json['idBoard'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$LabelModelToJson(LabelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idBoard': instance.idBoard,
      'name': instance.name,
      'color': instance.color,
    };
