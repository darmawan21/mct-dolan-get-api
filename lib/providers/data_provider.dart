import 'package:flutter/cupertino.dart';
import 'package:mct_dolan/data/models/data_model.dart';
import 'package:mct_dolan/services/data_service.dart';

class DataProvider with ChangeNotifier {
  // List<DataModel> _datas = [];

  // List<DataModel> get datas => _datas;

  DataModel? data;
  bool loading = false;

  // set datas(List<DataModel> datas) {
  //   _datas = datas;
  //   notifyListeners();
  // }

  // Future<void> getDatas() async {
  //   datas = await DataService().getDatas();
  //   notifyListeners();
  // }

  getData() async {
    loading = true;
    data = (await getSinglePostData());
    loading = false;

    print('print data');
    print(data);

    notifyListeners();
  }
}
