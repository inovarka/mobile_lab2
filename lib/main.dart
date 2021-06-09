import 'package:flutter/material.dart';
import 'package:mobile_lab2/models/MainModel.dart';
import 'package:provider/provider.dart';
import 'package:mobile_lab2/body.dart';
import 'package:mobile_lab2/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (context) => MainModel(),
      child: MaterialApp(
        title: 'KPI',
        theme: ThemeData(primaryColor: Colors.grey[300]),
        home: Scaffold(
          appBar: AppBar(
              actions: [
                IconButton(
                  icon: Icon(Icons.star),
                  onPressed: () => null,
                ),
              ],
              title: Container(
                child: Consumer<MainModel>(builder: (context, model, child) {
                  return Text(model.title);
                }),
                alignment: Alignment.center,
              )),
          body: MyBody(),
          drawer: MyDrawer(),
        ),
      ),
    );
  }
}