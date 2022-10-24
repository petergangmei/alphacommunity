import 'dart:async';
import 'dart:convert';

import 'package:alphacommunity/data/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:alphacommunity/global.dart' as global;

class MainRepository {
  // /key/recent
  String endpoint2 = 'https://reqres.in/api/users?page=2f';

  String endpoint = 'https://alphacommunity.in/api/mobile-app/';


  Future<List<UserModel>> getUsers() async{
    Response  response = await http.get(Uri.parse(endpoint2));
    if(response.statusCode ==2000){
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();

    }else{
      throw  Exception(response.reasonPhrase);
    }
  }  
  
  // 0370BBA349
  getToken() async {

    // ignore: unused_local_variable
    final response = await http.post(
      Uri.parse('${endpoint}generate-token/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'employee_id': "0370BBA349",
      }),

      
    );

    final data = jsonDecode(response.body);
    print(data);
    print(data["response"]['token']);
    global.tokenValue = data["response"]['token'];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("tokenValue", data["response"]['token']);


    if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    // return Album.fromJson(jsonDecode(response.body));
    
    return "abc";
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }

    // if (response.statusCode == 200) {
    //   final List result = jsonDecode(response.body);
    //   return result.map((e) => WordModel.fromJson(e)).toList();
    // } else {
    //   throw Exception(response.reasonPhrase);
    // }
  }

  jsonEncode(Map<String, String> map) {}

  // Future<List<WordModel>> getWords() async {
  //   Response response = await get(Uri.parse('${endpoint}recent'));
  //   if (response.statusCode == 200) {
  //     final List result = jsonDecode(response.body);
  //     return result.map((e) => WordModel.fromJson(e)).toList();
  //   } else {
  //     throw Exception(response.reasonPhrase);
  //   }
  // }

  // Future<List<WordModel>> wordSearch(String word) async {
  //   Response response = await get(Uri.parse('${endpoint}keyword/' + word));
  //   if (response.statusCode == 200) {
  //     print('response 200');
  //     final List result = jsonDecode(response.body);
  //     return result.map((e) => WordModel.fromJson(e)).toList();
  //   } else {
  //     throw Exception(response.reasonPhrase);
  //     print('error 0000');
  //   }
  // }
}
