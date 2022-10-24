import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mct_dolan/data/models/checklist_model.dart';
import 'package:mct_dolan/data/models/data_model.dart';
import 'package:mct_dolan/data/models/label_model.dart';
import 'package:mct_dolan/data/models/mct_model.dart';

void main() async {
  Uri url =
      Uri.parse('https://egov.phicos.co.id/skripsi/simbahkos/api/example/');

  var res = await http.get(url);

  // var data = (json.decode(res.body))['data'];
  // var data = jsonDecode(res.body)['data'];
  // MctModel mtcmodel = MctModel.fromJson(data);

  DataModel? result;

  if (res.statusCode == 200) {
    Map map = jsonDecode(res.body)['data'];
    var list = [];

    

    print(list);
  } else {
    throw Exception('Gagal Get Product');
  }

  // Mct mct = Mct.fromJson(data);
  // Checklist checklist = Checklist.fromJson(data['checklists'][3]);

  // print(mct.name);
  // // ================
  // print(mct.desc);

  // print(checklist.name);
  // print(mtcmodel);

  // String baseUrl = 'https://egov.phicos.co.id/skripsi/simbahkos/api/example/';

  // Future<List<DataModel>> getDatas() async {
  //   var url = baseUrl;

  //   var response = await http.get(
  //     Uri.parse(url),
  //   );

  //   if (response.body == 200) {
  //     List data = jsonDecode(response.body)['data'];
  //     List<DataModel> datas = [];
  //     print(data);

  //     return datas;
  //   } else {
  //     throw Exception('gagal');
  //   }
  // }

  // List map = [
  //   {"Jack", 23},
  //   {"Adam", 27},
  //   {"Katherin", 25}
  // ];
  // map.forEach((key, value) => print('${key}: ${value}'));
  // var list = [];

  // map.forEach((key, value) => list.add(Customer(key, value)));
  // print(list);
  // var list = [];

  // for (var item in map) {
  //   list.add(Customer('name', 12));
  // }

  // print(list);
}
