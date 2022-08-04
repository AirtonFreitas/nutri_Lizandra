import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

class FirebaseData {


  static saveData() {
    final email = 'airton@gmailcom';
    final _baseUrl = 'https://nutri-lizandra-default-rtdb.firebaseio.com/';
    String encoded = base64.encode(utf8.encode(email));
    http.post(

      Uri.parse('$_baseUrl/$encoded/profile.json'),
      body: jsonEncode({
        'name': 'Airton Siqueira',
        'peso': '112.5',
        'idade': '28',
        'sexo': 'M',
        'altura': '1.73',
        'cedentario': 'S',
      }),
    );
  }

  static enviaMgs() {
    final email = 'airton@gmailcom';
    final _baseUrl = 'https://nutri-lizandra-default-rtdb.firebaseio.com/';
    final time = DateTime.now();
    String encoded = base64.encode(utf8.encode(email));
    http.post(

      Uri.parse('$_baseUrl/$encoded/chat.json'),
      body: jsonEncode({
        'msg' : 'Olá, bom dia.',
        'horaEnvio' : time.toString()
      }),
    );
  }
}