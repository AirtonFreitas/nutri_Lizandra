import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

class FirebaseData {
  static saveRegister(String nome, String idade, String peso, String altura,
      String genero, String objetivoNutricional, String perfil) {
    final email = 'airton@gmailcom';
    final _baseUrl = 'https://nutri-lizandra-default-rtdb.firebaseio.com/';
    String encoded = base64.encode(utf8.encode(email));
    http.post(
      Uri.parse('$_baseUrl/$encoded/profile.json'),
      body: jsonEncode({
        'name': '$nome',
        'idade': '$idade',
        'peso': '$peso',
        'altura': '$altura',
        'genero': '$genero',
        'objetivoNutricional': '$objetivoNutricional',
        'praticaAtividade': '$perfil',
      }),
    );
  }static editRegister(String nome, String idade, String peso, String altura,
      String genero, String objetivoNutricional, String perfil) {
    final email = 'airton@gmailcom';
    final _baseUrl = 'https://nutri-lizandra-default-rtdb.firebaseio.com/';
    String encoded = base64.encode(utf8.encode(email));
    http.put(
      Uri.parse('$_baseUrl/$encoded/profile.json'),
      body: jsonEncode({
        'name': '$nome',
        'idade': '$idade',
        'peso': '$peso',
        'altura': '$altura',
        'genero': '$genero',
        'objetivoNutricional': '$objetivoNutricional',
        'praticaAtividade': '$perfil',
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
      body: jsonEncode({'msg': 'Olá, bom dia.', 'horaEnvio': time.toString()}),
    );
  }
}
