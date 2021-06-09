import 'package:flutter/material.dart';
import 'package:mobile_lab2/models/MainModel.dart';
import 'package:mobile_lab2/pages/mainPage.dart';
import 'package:mobile_lab2/pages/settings.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Expanded(
          flex: 10,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.network(
                            'http://pngimg.com/uploads/computer_pc/computer_pc_PNG17485.png'),
                      ),
                      Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Pasha'),
                            ],
                          ))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Main'),
                onTap: () {
                  Provider.of<MainModel>(context, listen: false).isMainPage = true;
                  Provider.of<MainModel>(context, listen: false).page = MainPage();
                  Provider.of<MainModel>(context, listen: false).title = "";
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.announcement_rounded),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Provider.of<MainModel>(context, listen: false).isMainPage = false;
                  Provider.of<MainModel>(context, listen: false).page = Settings();
                  Provider.of<MainModel>(context, listen: false).title = "Налаштування";
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.auto_stories),
                title: Text('Tech'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Flutter'),
                Text('Lab2'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class RoundImage extends StatelessWidget {
  final double size;
  final String href;

  RoundImage({this.size, this.href});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Image.network(
        href,
        height: size,
        width: size,
      ),
    );
  }
}