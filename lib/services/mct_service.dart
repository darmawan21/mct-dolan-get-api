import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:mct_dolan/data/models/mct_model.dart';

class MctService {
  String baseUrl = 'https://egov.phicos.co.id/skripsi/simbahkos/api/example/';

  Future<MctModel?> getMct() async {
    var url = baseUrl;

    var response = await http.get(
      Uri.parse(url),
    );

    print('coba');
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var mctmodel = data.map((item) => MctModel.fromJson(item)).toList();
      return mctmodel;
    } else {
      throw Exception('Gagal Tampil');
    }
  }
}
