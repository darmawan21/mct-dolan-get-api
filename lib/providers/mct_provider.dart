import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mct_dolan/data/models/mct_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MctProvider with ChangeNotifier {
  // List<MctModel> _mcts = [];
  // List<MctModel> get mcts => _mcts;

  // set mcts(List<MctModel> mcts) {
  //   _mcts = mcts;
  //   notifyListeners();
  // }

  // // get mct
  // Future<void> getMct() async {
  //   try {
  //     List<MctModel> mcts = await MctService().getMct();
  //     _mcts = mcts;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  getMct() async {
    var url = 'https://egov.phicos.co.id/skripsi/simbahkos/api/example/';

    var response = await http.get(
      Uri.parse(url),
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      MctModel mctmodel = MctModel.fromJson(data); 
      return mctmodel;
    } else {
      return <MctModel>[];
    }
  }
}
