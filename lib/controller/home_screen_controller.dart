import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class HomeScreenController with ChangeNotifier
{
  //https://catfact.ninja/fact
  Future<void> getUserData()
  async {
    final url = Uri.parse("https://catfact.ninja/fact");
    var responseData = await  http.get(url); // bcoz get is a future function
    print('responseData' + responseData.statusCode.toString());
    print('responseBody' + responseData.body);
    if (responseData.statusCode == 200)
      {
        //json dataye decode cheythe map aakunu
        var decodedData = jsonDecode(responseData.body);
        print(decodedData["fact"]);
      }
  }
}