import 'dart:convert';
import 'package:http/http.dart' as http;

class DetailController {

  List allCharacters = [];

  getDragonBalls() async{
    var url = Uri.https('dragonball-api.com', 'api/characters');
    var response = await http.get(url);
    allCharacters = jsonDecode(response.body)['items'];
    //setState(() {});
  }
}