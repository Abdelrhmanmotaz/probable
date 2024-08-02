import 'package:flutter/material.dart';
import 'package:flutter_application_10/model/data.dart';
import 'package:flutter_application_10/model/Jsonmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<JsonModel> data1 = [];
  @override
  void initState() {
    data1 = Data_Json.map((e) => JsonModel.json(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ListView.builder(
                itemCount: data1.length,
                itemBuilder: (context, index) => datajson(data1[index]))
          ],
        ),
      ),
    );
  }

  datajson(JsonModel model) {
    Text("a${model.name}");
    Text("a");
  }
}

//  datascrean(JsonModel jsonModel) {
//     Text("your id is = "+jsonModel.id.toString());
//     Text("your name is = ${jsonModel.name}");
//     Text("your username is = +${jsonModel.username}");
//     Text("your email is = ${jsonModel.email}");
//     Text("your phone is = ${jsonModel.phone}");
//     Text("your website is = ${jsonModel.website}");
    
//   }