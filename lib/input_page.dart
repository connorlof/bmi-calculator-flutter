import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const containerPrimaryColor = Color(0xFF1D1E33);
const containerSecondaryColor = Color(0xFF1D1E33);

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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    containerPrimaryColor,
                    cardChild: IconContent(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(containerPrimaryColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(containerPrimaryColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(containerPrimaryColor),
                ),
                Expanded(
                  child: ReusableCard(containerPrimaryColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.cardColor, {this.cardChild});

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
