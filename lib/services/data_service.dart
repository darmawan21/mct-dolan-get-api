import 'dart:convert';
import 'dart:developer';

import 'package:mct_dolan/data/models/data_model.dart';
import 'package:http/http.dart' as http;

// class DataService {
//   String baseUrl = 'https://egov.phicos.co.id/skripsi/simbahkos/api/example/';

//   Future<DataModel> getDatas() async {
//     DataModel result;
//     var url = baseUrl;

//     var response = await http.get(
//       Uri.parse(url),
//     );

//     print(response.body);

//     if (response.body == 200) {
//       // List data = jsonDecode(response.body)['data'];
//       // List<DataModel> datas = [];

//       // for (var item in data) {
//       //   datas.add(DataModel.fromJson(item));
//       // }
//       return result = DataModel.fromJson(jsonDecode(response.body)['data']);
//     } else {
//       throw Exception('Gagal get data');
//     }
//   }
// }

Future<DataModel?> getSinglePostData() async {
  DataModel? result;

  try {
    final response = await http.get(
      Uri.parse('https://egov.phicos.co.id/skripsi/simbahkos/api/example/'),
    );

    var item = json.decode(response.body)['status'];
    print(item);

    if (item == true) {
      final item = json.decode(response.body)['data'];
      result = DataModel.fromJson(item);
      print('r');
      print(result.toJson());
    } else {
      print('error');
    }
  } catch (e, trace) {
    log(e.toString());
    print(trace.toString());
  }

  return result;
}
