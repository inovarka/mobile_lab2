import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://kpi.ua/files/logo.png',
                width: 65,
              ),
            ],
          ),
          Column(
            children: [
              Text('KPI'),
              Text('Sketch application'),
            ],
          ),
        ],
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            BoldText(
                text: 'News',
                margin: EdgeInsets.only(left: 20)),
            Row(
              children: [
                MyContainer(
                    text: 'FICT news',
                    margin: EdgeInsets.all(20)),
              ],
            ),
            DoubleContent(
              leftText: 'KPI challenge',
              rightText: 'YouTube',
              margin: EdgeInsets.symmetric(horizontal: 20),
            ),
            BoldText(text: 'About', margin: EdgeInsets.only(left: 20, top: 20)),
            DoubleContent(
              leftText: 'Education',
              rightText: 'Schedule',
              margin: EdgeInsets.all(20),
            ),
            BoldText(
                text: "Call us",
                margin: EdgeInsets.only(left: 20, top: 20)),
            Row(
              children: [
                MyContainer(text: '----', margin: EdgeInsets.all(20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  final EdgeInsets margin;
  final String text;

  BoldText({this.margin, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    );
  }
}

class DoubleContent extends StatelessWidget {
  final EdgeInsets margin;
  final String leftText;
  final String rightText;

  DoubleContent({this.margin, this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          MyContainer(
            text: leftText,
            margin: EdgeInsets.only(right: 20),
          ),
          MyContainer(
            text: rightText,
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String text;
  final int flex;
  final EdgeInsets margin;

  MyContainer({this.text = '', this.flex = 1, this.margin});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: Colors.white,
        height: 150,
        margin: margin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                'http://cad.kpi.ua/images/ICO/128/ico-school.png'),
            Text(text),
          ],
        ),
      ),
    );
  }
}