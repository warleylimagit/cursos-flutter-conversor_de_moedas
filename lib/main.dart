import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const requestFinance = "https://api.hgbrasil.com/finance?key=48201f22";

void main() {
  runApp(MaterialApp(
    title: "Conversor de moedas",
    home: Home(),
  ));
}

Future<Map> GetData() async{
  http.Response response = await http.get(requestFinance);
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("\$ Conversor"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.white,
    );
  }
}


