import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/models/dragonball_character.model.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

class DetailController {

  List allCharacters = [];

  getDragonBalls() async{
    var url = Uri.https('dragonball-api.com', 'api/characters');
    var response = await http.get(url);
    allCharacters = jsonDecode(response.body)['items'];
    //setState(() {});
  }

  getItemDragonBall(Map<String, dynamic> data){
    return DragonBallModel.fromJson(data);
  }

  printPlatform(){
    if (kIsWeb){
      print("Entorno: WEB");
    } else if (Platform.isAndroid){
      print("Entorno: Android");
    } else if (Platform.isIOS){
      print("Entorno: iOS");
    } else if (Platform.isWindows){
      print("Entorno: Windows");
    } else if (Platform.isMacOS){
      print("Entorno: Mac");
     }else if (Platform.isLinux){
      print("Entorno: Linux");
    }
  }

}