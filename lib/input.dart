import 'package:flutter/material.dart';

const appbarHeight = 35.0;
const ReusablecardColor =Color(0xFF1D1E33);
CONST bottombarColor =Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: ReusablecardColor),
              ),
              Expanded(child: ReusableCard(colour: ReusablecardColor))
            ],
          )),
          Expanded(child: ReusableCard(colour: ReusablecardColor)),
          Expanded(
              child: Row(
            children: [
              Expanded(child: ReusableCard(colour: ReusablecardColor)),
              Expanded(child: ReusableCard(colour: ReusablecardColor))
            ],
          )),
          Container(
            color:bottombarColor ,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: appbarHeight,
          )
        ]));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
