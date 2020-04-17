import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:quarantine_app/functionality/jsonPaser/jsonModel.dart';

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  Future<dynamic> fetchData() async {
    String url = "https://covid-193.p.rapidapi.com/statistics";

    var res = await http.get(url, headers: {
      "x-rapidapi-host": "covid-193.p.rapidapi.com",
      "x-rapidapi-key": "88c90821f2msh41915eb3a1c64b7p1d1ff3jsn4972099a2cff",
    });

    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["response"];

      //print(response);
      for (var item in rest) {
        Response response = new Response.fromJson(item);
        print(response.country);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
