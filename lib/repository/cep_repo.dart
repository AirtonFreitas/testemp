import 'dart:convert';
import 'package:http/http.dart' as http;

class CepRepository {
  Future<Map> getEndereco(String cepBusca) async {
    http.Response response;
    var url = 'https://viacep.com.br/ws/${cepBusca}/json';
    response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);

  }
}